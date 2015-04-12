class AssignmentsController < ApplicationController
  before_filter :common_content, :except => :destroy
  def new
  end

  def index
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def common_content
    @page = "main"
  end
end
