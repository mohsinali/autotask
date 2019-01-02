class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_commentable
  def index
  	@commentable = External.find(params[:external_id])
    @comments = @commentable.comments
  end

  def new
  	@comment = @commentable.comments.new
  end
  def create
  @comment = @commentable.comments.new(comment_params)  
  @comment.user = current_user
    if @comment.save
    redirect_to @commentable, notice: "Comment created."
      else
    render :new
    end

  end
  def destroy
    @comment = @article.comments.find(params[:id])

    if @comment.user_id == @current_user_id
      @comment.destroy
      render json: {}
    else
      render json: { errors: { comment: ['not owned by user'] } }, status: :forbidden
    end
  end
   def show
     @comment = Comments.find(params[:id])
   
  end
    def comment_params
      params.require(:comment).permit(:content)
    end
  private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

end
