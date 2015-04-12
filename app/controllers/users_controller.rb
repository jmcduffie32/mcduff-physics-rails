class UsersController < ApplicationController
  before_filter :common_content, :except => [:delete, :destroy]
  def new
  end

  def show
    @user = User.find(params[:id])
    debugger
  end

  private

  def common_content
    @page = "main"
  end
end
