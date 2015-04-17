class ProblemsController < ApplicationController
# belongs_to :assignment
  before_filter :common_content, :except => [:destroy, :delete]
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def common_content
    @page = "main"
  end
end
