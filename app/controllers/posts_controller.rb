class PostsController < ApplicationController
   
    
    def index
        @posts = Post.all
    end    

    def create
        post = Post.new
        post.title = params[:post_title]
        post.content = params[:post_content]
        post.save
        puts post
        #TODO: 'notes/new' 로 리다이렉트 되는 걸 변경한다.
        # redirect_to "/post/#{post.id}"
        #views/notes/create.html.erb를 보여줘라
    end
    
    def read
        puts '================'
        p params
        puts '================'
      @post = Post.find(params[:id])
    end


end
