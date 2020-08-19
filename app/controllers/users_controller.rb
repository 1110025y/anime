class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @tweets = current_user.tweets
    @blogs = current_user.blogs
    
  end
end
