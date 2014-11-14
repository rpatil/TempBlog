class TutorialModesController < ApplicationController

  layout 'admin_application'
  def index
    @tutorial_modes = TutorialMode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorial_modes }
    end
  end

  def show
    @tutorial_mode = TutorialMode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial_mode }
    end
  end

  def new
    @tutorial_mode = TutorialMode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutorial_mode }
    end
  end

  def edit
    @tutorial_mode = TutorialMode.find(params[:id])
  end

  def create
    @tutorial_mode = TutorialMode.new(params[:tutorial_mode])

    respond_to do |format|
      if @tutorial_mode.save
        format.html { redirect_to @tutorial_mode, notice: 'Tutorial mode was successfully created.' }
        format.json { render json: @tutorial_mode, status: :created, location: @tutorial_mode }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tutorial_mode = TutorialMode.find(params[:id])

    respond_to do |format|
      if @tutorial_mode.update_attributes(params[:tutorial_mode])
        format.html { redirect_to @tutorial_mode, notice: 'Tutorial mode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutorial_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial_mode = TutorialMode.find(params[:id])
    @tutorial_mode.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_modes_url }
      format.json { head :no_content }
    end
  end
end
