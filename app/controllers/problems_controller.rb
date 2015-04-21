class ProblemsController < ApplicationController
  before_action :common_content, :except => :destroy
  before_action :find_problem, :only => [:show, :edit, :update, :destroy]
  def index
    @problems = Problem.all
  end

  def show
  end

  def new
    @problem = Problem.new
  end

  def edit
    
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
    if @problem.update(problem_params)
      flash[:success] = "Problem updated"
      redirect_to @problem
    else
      render :edit
    end
  end


  def destroy
  end

  private
    def problem_params
      params.require(:problem).permit(:topic, :problem_text,:id,
                                     problem_parts_attributes: [:statement,:answer,:id,:_destroy])
    end

    def find_problem
      @problem = Problem.find(params[:id])
      @parts = @problem.problem_parts
    end

    def common_content
      @page = "main"
    end
end
