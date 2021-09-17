class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "Benny"
    cookies[:cookies_hello] ||= "Benny"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
