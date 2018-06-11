class RelationshipsController < ApplicationController
  before_action :set_person
  before_action :set_relationship, only: [:show, :edit, :update, :destroy]

  # GET /people/1/relationships
  # GET /people/1/relationships.json
  def index
    @relationships = Relationship.where(person_id: @person.id).or(Relationship.where(related_person_id: @person.id))
  end

  # GET /people/1/relationships/1
  # GET /people/1/relationships/1.json
  def show
  end

  # GET /people/1/relationships/new
  def new
    @relationship = @person.relationships.new
  end

  # GET /people/1/relationships/1/edit
  def edit
  end

  # POST /people/1/relationships
  # POST /people/1/relationships.json
  def create
    @relationship = @person.relationships.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to [@person, @relationship], notice: 'Relationship was successfully created.' }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1/relationships/1
  # PATCH/PUT /people/1/relationships/1.json
  def update
    respond_to do |format|
      if @relationship.update(relationship_params)
        format.html { redirect_to [@person, @relationship], notice: 'Relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @relationship }
      else
        format.html { render :edit }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1/relationships/1
  # DELETE /people/1/relationships/1.json
  def destroy
    @relationship.destroy
    respond_to do |format|
      format.html { redirect_to person_relationships_url(@person), notice: 'Relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:person_id])
    end

    def set_relationship
      @relationship = Relationship.where(person_id: @person.id).or(Relationship.where(related_person_id: @person.id)).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationship_params
      params.require(:relationship).permit(:relation_id, :related_person_id)
    end
end
