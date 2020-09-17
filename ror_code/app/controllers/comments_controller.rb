class CommentsController < ApplicationController
	before_action :authenticate_user!
  expose :comment, id: ->{ params[:comment_id] }
 
 # POST /comments
	def create
		post = Post.find_by(params[:post_id])
		@comment = post.comments.build(comment_params)
		@comment.user = current_user
    if @comment.save
      flash[:success] = "comments created successfully."
      redirect_to request.referer
    else
    	flash[:error] = @comment.errors.full_messages
    	redirect_to posts_path
    end
	end

  def edit
    comment
  end

  def update
    binding.pry
  end

	private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
