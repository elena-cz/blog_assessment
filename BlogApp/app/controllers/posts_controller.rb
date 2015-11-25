class PostsController < ApplicationController
    
    
    before_action :authenticate_user!  
    
    def index

        @posts = current_user.posts.paginate(page: params[:page], per_page: 3)
    end
    
    def show
        @post = Post.find(params[:id])
        @user = User.find(params[:user_id])
       
    end 
  
    
    def new
        @user = current_user
        @post = Post.new
    end
    
    def create
        post = current_user.posts.create(post_params)
    
        
        if post.valid?
			redirect_to user_posts_path
		else
			flash[:error] = "There was a problem saving the photo."
			
			redirect_to new_user_post_path
			
		end
        
    end
    
 
    

    
private

def post_params
    params.require(:post).permit(:title, :content, :avatar)
end    
end
