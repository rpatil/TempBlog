class TutorialTimesController < ApplicationController

  layout 'admin_application'
  def index
    @tutorial_times = TutorialTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorial_times }
    end
  end

  def show
    @tutorial_time = TutorialTime.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @tutorial_time }
    end
  end

  def new
    @tutorial_time = TutorialTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutorial_time }
    end
  end

  def edit
    @tutorial_time = TutorialTime.find(params[:id])
  end

  def create
    @tutorial_time = TutorialTime.new(params[:tutorial_time])

    respond_to do |format|
      if @tutorial_time.save
        format.html { redirect_to @tutorial_time, notice: 'Tutorial time was successfully created.' }
        format.json { render json: @tutorial_time, status: :created, location: @tutorial_time }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial_time.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tutorial_time = TutorialTime.find(params[:id])

    respond_to do |format|
      if @tutorial_time.update_attributes(params[:tutorial_time])
        format.html { redirect_to @tutorial_time, notice: 'Tutorial time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutorial_time.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial_time = TutorialTime.find(params[:id])
    @tutorial_time.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_times_url }
      format.json { head :no_content }
    end
  end
end
