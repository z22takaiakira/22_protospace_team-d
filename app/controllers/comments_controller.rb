class CommentsController < ApplicationController
  before_action :set_comment, only: [:update]
  before_action :set_prototype, only: [:create]

 def create
  @comment =Comment.new
  Comment.create(comment_params)
  redirect_to :root

 end

 def update

  @comment.update(comment_params)
 end

private
def set_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:body, :prototype_id,:user_id)
  end
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end

