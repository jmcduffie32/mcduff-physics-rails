class ProblemsController < ApplicationController
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
    def problem_params
      params.require(:problem)
    end
    def common_content
      @page = "main"
    end
end
