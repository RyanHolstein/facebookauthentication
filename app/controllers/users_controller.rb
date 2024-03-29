class UsersController < ApplicationController
  


  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end



  def user_params
    params.require(:user).permit(:username, :email, :phone_number, :password)
  end

end
