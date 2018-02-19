class CommentsController < ApplicationController
 def create
  Comment.create(comment: params[:comment], prototype_id: params[:prototype_id], user_id: current_user.id)
 end







end



