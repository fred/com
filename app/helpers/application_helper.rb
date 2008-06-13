# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def admin
    logged_in? && current_user.admin
  end
  
  # if true, returns  image_tag("/images/yes.png")
  def boolean_to_image(bol)
    if bol 
      return image_tag("/images/yes.png")
    else
      return "No"
    end
  end
	
	def boolean_to_word(bol)
    if bol 
      return "<span class='not_zero'>Yes</span>"
    else
      return "<span class='zero'>No</span>"
    end
  end
  
end
