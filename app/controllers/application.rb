# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  
  before_filter :login_from_cookie
  
  layout 'main'

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  # protect_from_forgery :secret => 'b782cd6a63797706735ea78931cd7132'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password, :email
  
  before_filter :all_pages
  
  include AuthenticatedSystem
  
  def all_pages
    @pages = Page.find(:all, :select => "id,title,permalink", :order => "menu_order ASC")
  end
  
end
