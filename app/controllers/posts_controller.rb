class PostsController < ApplicationController
  before_action :require_login
  #아래코드들이 실행되기전에는 로그인을 실행하고 이어실행해라!


  def index
    @posts = Post.all
    end

    def show
    @post =Post.find(params[:id])
    end

    def new
    @post = Post.new
    end

    def create
    @post = Post.new(post_params.merge(user: current_user))
    @post.save

    redirect_to post_path(@post)
    end

    def edit
    @post = Post.find(params[:id])
    end

    def update
    post = Post.find(params[:id])
    post.update(post_params)

    redirect_to post_path(post)
    end

    def destroy
    post = Post.find(params[:id])
    post.destroy

    redirect_to posts_path
    end

    private
    def post_params
      params.require(:post).permit(:title, :content)
    end



end
