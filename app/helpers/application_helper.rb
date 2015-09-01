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
    return image_tag member.avatar, class: 'avatar' if member.avatar.present?
    image_placeholder width: 200, height: 200, text: 'no pic', class: 'avatar'
  end

  def render_member_sns_link(service)
    if service.service == :email
      mail_to service.link, class: 'social-icon' do
        render_social_icon(service.service)
      end
    else
      link_to service.link, class: 'social-icon', target: '_blank' do
        render_social_icon(service.service)
      end
    end
  end

  def render_social_icon(service)
    case service
    when :email
      icon 'envelope-o'
    when :facebook
      icon 'facebook-official'
    when :twitter
      icon 'twitter-square'
    when :github
      icon 'github'
    when :dribbble
      icon 'dribbble'
    when :behance
      icon 'behance'
    when :'google+'
      icon 'google-plus-square'
    when :instagram
      icon 'instagram'
    when :lastfm
      icon 'lastfm-square'
    when :linkedin
      icon 'linkedin'
    when :medium
      icon 'medium'
    when :pinterest
      icon 'pinterest'
    when :tumblr
      icon 'tumblr-square'
    when :wordpress
      icon 'wordpress'
    when :youtube
      icon 'youtube'
    when :self_hosted_blog
      icon 'rss-square'
    end
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
