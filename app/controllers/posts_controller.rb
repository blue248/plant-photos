class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post_form = PostForm.new
  end

  def create
    @post_form = PostForm.new(post_form_params)
    if @post_form.valid?
      @post_form.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
    post_attributes = @post.attributes
    @post_form = PostForm.new(post_attributes)
    @post_form.tag_name = @post.tags.first&.tag_name
  end

  def update
    @post_form = PostForm.new(post_form_params)
    @post_form.image ||= @post.image.blob
    if @post_form.valid?
      @post_form.update(post_form_params, @post)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.delete(params[:id])
    redirect_to root_path
  end

  private
  def post_form_params
    params.require(:post_form).permit(:content, :tag_name, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
