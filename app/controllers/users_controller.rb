class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        redirect_to root_path
      else
        render :new
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :password )
  end

end
