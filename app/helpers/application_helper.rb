module ApplicationHelper
  def render_tree(person)
    content_tag(:div, class: 'person_tree') do
      content_tag(:div, "#{person.name} #{"(#{person.nickname})" if person.nickname}", class: 'non_spouce person_details') +
      person.spouces.map do |spouce|
        content_tag(:div, class: 'person_tree') do
          content_tag(:div, "#{spouce.name} #{"(#{spouce.nickname})" if spouce.nickname}", class: 'spouce person_details') +
          person.children_with(spouce).map do |child|
            render_tree(child)
          end.join.html_safe
        end
      end.join.html_safe
    end.html_safe
  end

  def render_collapsible_tree(person)
    content_tag(:ul, class: 'menu vertical multilevel-accordion-menu', data: { accordion_menu: '' }) do
      render_collapsible_member(person, 0)
    end
  end

  def render_collapsible_member(person, count)
    content_tag(:li) do
      link_to("#{person.name} #{"(#{person.nickname})" if person.nickname}", 'javascript:void(0)') +
      person.spouces.map do |spouce|
        count += 1
        x = content_tag(:ul, class: "menu vertical sublevel-#{count}", data: { accordion_menu: '' }) do
          content_tag(:li) do
            count += 1
            y = link_to("#{spouce.name} #{"(#{spouce.nickname})" if spouce.nickname}", 'javascript:void(0)') +
            content_tag(:ul, class: "menu vertical sublevel-#{count}") do
              person.children_with(spouce).map do |child|
                render_collapsible_member(child, count)
              end.join.html_safe
            end
            count -= 1
            y
          end
        end
        count -= 1
        x
      end.join.html_safe
    end
  end
end
