class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    # @prototype = Prototype.find(params[:id])
    #   @comment = Comment.new
    #   @comments = @prototype.comments.includes(:user)
    
    if @comment.save
    redirect_to prototype_path(@comment.prototype)
    # render prototype_path(@comment.prototype)
    # render :show
    else
      @prototype = @comment.prototype 
      @comments = @prototype.comments
      # @prototype = @comment.prototype
      # @comments = @prototype.comments
      # # redirect_to :show
      render "prototypes/show"
    end
  end
    


  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
   
  end


end
