class HomeController < ApplicationController
  before_action :require_login
  #아래코드들이 실행되기전에는 로그인을 실행하고 이어실행해라!


  def index
       @posts = Post.all.reverse
  end
end
