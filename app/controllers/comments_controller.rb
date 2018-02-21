class CommentsController < ApplicationController
 def create
  Comment.create(comment_params)
 end

private
def set_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:prototype).permit(
      :comment,
      :prototype_id,
      :user_id,)
  end


