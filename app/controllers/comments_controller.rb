class CommentsController < ApplicationController
	def create
		@link = Link.find(params[:link_id])
		@comment = @link.comments.build comment_params
		@comment.user = current_user

		if @comment.save
			redirect_to :back
		else
			render 'new'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end
end
