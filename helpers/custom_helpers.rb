module CustomHelpers

  # Formats the page <title>
  def page_title(title = nil)
    if title.nil?
      app_name
    else
      "#{title} | #{app_name}"
    end
  end

  def split_array(space)
    amenities = space.amenities.split(',')

    length = amenities.size

    if length.odd?
      length1 = (length-1) / 2
    else
      length1 = length / 2
    end

    length2 = length1 + 1

    group_one = amenities[0..length1]
    group_two = amenities[length2..length]

    return [group_one, group_two]
  end


  def case_study_image(article)
    image_url = article.metadata[:page]['image']
    image_url = "images/case-studies/" + image_url
    return image_url
  end

end



