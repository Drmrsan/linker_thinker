class CommentsController < ApplicationController
	before_filter :authenticate_user!
	def create
		@link = Link.find(params[:link_id])
		@comment = @link.comments.build comment_params
		@comment.user = current_user

		if @comment.save
			redirect_to :back
		else
			redirect_to :back 
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to :back
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end
end
