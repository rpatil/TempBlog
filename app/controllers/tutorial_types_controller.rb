class TutorialTypesController < ApplicationController

  layout 'admin_application'
  def index
    @tutorial_types = TutorialType.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorial_types }
    end
  end

  def show
    @tutorial_type = TutorialType.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial_type }
    end
  end

  def new
    @tutorial_type = TutorialType.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutorial_type }
    end
  end

  def edit
    @tutorial_type = TutorialType.find(params[:id])
  end

  def create
    @tutorial_type = TutorialType.new(params[:tutorial_type])

    respond_to do |format|
      if @tutorial_type.save
        format.html { redirect_to @tutorial_type, notice: 'Tutorial type was successfully created.' }
        format.json { render json: @tutorial_type, status: :created, location: @tutorial_type }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tutorial_type = TutorialType.find(params[:id])

    respond_to do |format|
      if @tutorial_type.update_attributes(params[:tutorial_type])
        format.html { redirect_to @tutorial_type, notice: 'Tutorial type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutorial_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial_type = TutorialType.find(params[:id])
    @tutorial_type.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_types_url }
      format.json { head :no_content }
    end
  end
end