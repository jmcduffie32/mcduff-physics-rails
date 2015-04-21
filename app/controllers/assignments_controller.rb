class AssignmentsController < ApplicationController
  before_action :common_content, :except => :destroy
  before_action :find_assignment, :only => [:show, :update, :edit, :destory]

  def new
    @assignment = Assignment.new
  end

  def index
    @assignments = Assignment.order(:created_at)
  end

  def create
    @assignment = Assignemnt.new(assignment_params)
    #add each submitted problem to the assignment
    problem_list.each do |prob|
      @assignment.problems << prob
    end

    if @assignment.save
      flash[:success] = "Assignment created successfully"
      redirect_to @assignment
    else
      render 'new'
    end
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

    def assignment_params
      params.require(:assignment).permit(:name)
    end

    def find_assignment
      @assignment = Assignment.find(params[:id])
    end

    def problem_list
      params.require(:problems)
    end

    def common_content
      @page = "main"
    end
end
