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
        current_user.posts.create(post_params)
        
        redirect_to user_posts_path
    end
    
 
    

    
private

def post_params
    params.require(:post).permit(:title, :content, :avatar)
end    
end
