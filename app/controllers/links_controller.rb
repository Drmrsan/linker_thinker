class LinksController < ApplicationController
	before_action :find_link, only: [:show, :edit, :destroy]
	before_filter :authenticate_user!, except: [:index, :show]
	def index
		@links = Link.all
		@link  = Link.new
	end

	def new
		@link = current_user.links.build
	end

	def create
		@link = current_user.links.build (link_params)
		# @link.user_id == current_user

		if @link.save
			redirect_to root_path, notice: "New link created"
		else
			render 'new'
		end
	end

	def show
		# @comment = @link.comments(params[:link_id])
	end

	def destroy
		@link.destroy
		redirect_to :back
	end

	def upvote
		@link = Link.find(params[:id])
		@link.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@link = Link.find(params[:id])
		@link.downvote_by current_user
		redirect_to :back
	end

	private
	def link_params
		params.require(:link).permit(:title, :link, :description)
	end

	def find_link
		@link = Link.find(params[:id])
	end
end
