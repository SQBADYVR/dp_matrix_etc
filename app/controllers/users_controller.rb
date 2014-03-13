class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

   def index
    @users = User.all
  end

  def show
    @user=User.find(params[:id])
  end

   def new
    @user = User.new
  end

  def edit
  end

   def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Design for Quality App"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render action: 'edit' }
     end
    end
  end

 def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
   end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
