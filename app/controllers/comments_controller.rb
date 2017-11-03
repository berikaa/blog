class CommentsController < ApplicationController

	def creat 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:name, :))
	
		redirect_to post_path(@post)
	end

end
