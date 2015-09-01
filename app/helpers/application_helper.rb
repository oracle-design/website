module ApplicationHelper
  def render_profession_icon(profession)
    case profession
    when :designer
      icon 'pencil', class: 'fa-2x'
    when :developer
      icon 'keyboard-o', class: 'fa-2x'
    when :marketing
      icon 'bar-chart', class: 'fa-2x'
    else
      icon 'heart', class: 'fa-2x'
    end
  end

  def render_member_avatar(member)
    image_tag member.avatar, class: 'avatar' if member.avatar.present?
    image_placeholder width: 200, height: 200, text: 'no pic', class: 'avatar'
  end

  def navi_menu_actived?(args)
    path = args[:path]
    class_name = args[:class_name] || 'actived'
    return class_name if current_page?(path)
  end

  def image_placeholder(args)
    width = args[:width] || '300'
    height = args[:height] || '300'
    text = args[:text] || "#{width} x #{height}"
    classes = args[:class] || ""

    image_tag "http://placehold.it/#{width}x#{height}&text=#{text}", :class => "#{classes}"
  end
end
