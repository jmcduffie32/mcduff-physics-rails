class ProblemsController < ApplicationController
  before_filter :common_content, :except => [:destroy, :delete]
  def index
    @problems = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)
    if @problem.save
      flash[:success] = "Problem created successfully."
      redirect_to @problem
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
    def problem_params
      params.require(:problem).permit(:topic, :problem_text)
    end
    def common_content
      @page = "main"
    end
end
