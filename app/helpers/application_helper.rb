module ApplicationHelper
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
