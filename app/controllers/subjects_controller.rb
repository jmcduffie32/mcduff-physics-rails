class SubjectsController < ApplicationController
  before_action :find_subject, :only => [:show, :update, :destroy, :edit]
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      flash[:success] = "Subject created successfully"
      redirect_to @subject
    else
      render 'new'
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
  end

  def new
  end
end
