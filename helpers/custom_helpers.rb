module CustomHelpers

  # Formats the page <title>
  def page_title(title = nil)
    if title.nil?
      app_name
    else
      "#{title} | #{app_name}"
    end
  end


  def case_study_image(article)
    image_url = article.metadata[:page]['image']
    image_url = "images/case-studies/" + image_url
    return image_url
  end

  def nav_link(link_text, url, options = {})
    options[:class] ||= ""
    options[:class] << " active" if url == current_page.url
    link_to(link_text, url, options)
  end

end



