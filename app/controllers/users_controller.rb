class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # ユーザの権限に応じて表示するindexを変更 1は人事 0は来場者
    @auth = current_user.auth
    if @auth == 1
      @users = User.where(auth: 0)
    else
      @companies = Company.all
    end
  end
end
