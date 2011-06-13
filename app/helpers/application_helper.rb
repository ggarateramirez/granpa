module ApplicationHelper


  # Devuelve un titulo por pagina.
  def title
    base_title = "Granpa.com"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("Granpa.png", :alt => "Granpa.com", :size => "200x29", :class => "round")
  end
end
