class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  
  
  
def create
  @shot = Shot.find(params[:shot_id]) # finds the id for the shot
  @comment = @shot.comments.create(comment_params) # finds the shot and builds a comment on it
  @comment.user_id = current_user.id if current_user # assigns user id to a comment
  @comment.save!
  redirect_to shot_path(@shot)



end
















def destroy
  @shot = Shot.find(params[:shot_id])
  @comment = @shot.comments.find(params[:id])
  @comment.destroy
  redirect_to shot_path(@shot)

end




  private

def comment_params
  params.require(:comment).permit(:name, :response)

end
end
