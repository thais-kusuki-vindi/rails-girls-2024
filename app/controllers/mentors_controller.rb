class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)

    if @mentor.save
      redirect_to @mentor
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @mentor = Mentor.find(params[:id])
  end

  def update
    @mentor = Mentor.find(params[:id])

    if @mentor.update(mentor_params)
      redirect_to @mentor
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private
    def mentor_params
      params
    end
end
