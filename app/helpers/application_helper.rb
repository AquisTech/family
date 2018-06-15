module ApplicationHelper
  def render_tree(person)
    content_tag(:div, class: 'person_tree') do
      content_tag(:div, "#{person.name} #{"(#{person.nickname})" if person.nickname}", class: 'person_details') +
      person.spouces.map do |spouce|
        content_tag(:div, class: 'person_tree') do
          content_tag(:div, "spouce.name #{"(#{spouce.nickname})" if spouce.nickname}", class: 'spouce person_details') +
          content_tag(:div, class: 'person_tree') do
            person.children_with(spouce).map do |child|
              render_tree(child)
            end.join.html_safe
          end
        end
      end.join.html_safe
    end.html_safe
  end
end
