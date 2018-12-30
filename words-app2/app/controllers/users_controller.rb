class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def login_form
  end

  def create
    @user = User.new(login_id: params[:login_id], name: params[:name], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/home/top")
    else
      render("users/new.html.erb")
    end
  end

  def login
    @user = User.find_by(login_id: params[:login_id],
                         password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/home/top")
    else
      @error_message = "IDまたはパスワードが間違っています"
      @login_id = params[:login_id]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/home/about")
  end
end
