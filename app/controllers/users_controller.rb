class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find_by :id => session[:user_id]
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new user_params
    if @user.save #returns true or false this checks if passwords have been entered properly etc
      session[:user_id] = @user.id
      session[:username] = @user.username
      session[:admin] = @user.admin
      redirect_to "http://localhost:3001/?#{ @user.username }", :overwrite_params => { :parm => 'foo' } ## change this to the actual link 
      # redirect_to new_user_path
    else
      render :new
    end
  end



  private

    def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(session[:user_id]) # I changed this to the session not params
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
end
