module CdnHelper

  def cdn_css(path, options = {})
    stylesheet_link_tag "#{Rails.configuration.cdn_uri}#{path}", options
  end

  def cdn_js(path, options = {})
    javascript_include_tag "#{Rails.configuration.cdn_uri}#{path}", options
  end
end
