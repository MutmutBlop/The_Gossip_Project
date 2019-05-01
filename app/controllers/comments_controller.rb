class CommentsController < ApplicationController

  def create
     @comment = Comment.new(content:params[:content], user_id:170, gossip_id:params[:id])
     if @comment.save
         redirect_to gossip_path(params[:id])
     else
         render "new"
     end
   end

   def comment_params
     params.require(:comment).permit(:content)
   end

end
