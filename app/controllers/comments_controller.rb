class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.create(comment_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

	private

	def comment_params
		params.require(:comment).permit(:post_id, :commenter, :body)
	end
end


