# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController

  #before_filter :cookies_required, :only => 'new'

  # render new.rhtml
  def new
  end

  def create
    logout_keeping_session!
    user = User.authenticate(params[:login], params[:password])
    if user
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
      redirect_back_or_default('/')
      flash[:notice] = "Logged in successfully"
    else
      note_failed_signin
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end

  def cookies_test
    if request.cookies["_session_id"].to_s.blank?
      logger.warn(" === cookies are disabled === ")
      render :template => "/shared/cookies_required"
    else
      redirect_back_or_default(:action => "new")
    end
  end

  def cookies_required
    if request.cookies["_session_id"].to_s.blank?
      session[:return_to] = request.request_uri
      redirect_to(:controller => "sessions", :action => "cookies_test")
      return false
    else
      return true
    end
  end

protected
  # Track failed login attempts
  def note_failed_signin
    flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
  
end
