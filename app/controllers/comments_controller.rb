class CommentsController < ApplicationController
 def create
  Comment.create(comment_params)
 end

 def update
  @comment.update(comment_params)

private
def set_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(
      :body,
      :prototype_id,
      :user_id,)
  end


