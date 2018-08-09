class CommentsController < ApplicationController
 before_action :set_trail


  def create
     @comment = @trail.comments.new(comment_params)
  #  @comment.trail = @trail
    if @comment.save!
      redirect_to trail_path(@trail)
  end

end

  private

  def set_trail
    @trail = Trail.find_by(params[:id])
  end
  def comment_params
      params.require(:comment).permit(:content)
    end

end
