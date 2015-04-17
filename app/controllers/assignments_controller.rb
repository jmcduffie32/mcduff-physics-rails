class AssignmentsController < ApplicationController
  has_many :problems
  accepts_nested_attributes_for :problems
  before_filter :common_content, :except => :destroy

  def new
    @assignment = Assignment.new
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

  def assignment_params
    params.require(:assignment).permit(

  private

  def common_content
    @page = "main"
  end
end
