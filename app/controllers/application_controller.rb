class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception


  def require_login
    unless user_signed_in? #만약 사용자가 로그인안했다면!
     redirect_to "/users/sign_in"
    end
  end
 # 로그인을 하지 않았을 경우 리다이렉션해라
end
