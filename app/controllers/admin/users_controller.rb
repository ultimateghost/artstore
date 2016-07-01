class Admin::UsersController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required
<<<<<<< HEAD

=======
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  def index
    @users = User.all
  end

  def to_admin
    @user = User.find(params[:id])
    @user.to_admin

    redirect_to admin_users_path
  end

  def to_normal
    @user = User.find(params[:id])
    @user.to_normal

    redirect_to admin_users_path
  end
end
