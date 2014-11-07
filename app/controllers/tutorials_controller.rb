class TutorialsController < ApplicationController

  layout 'admin_application'
  def index
    @tutorials = Tutorial.all
    respond_to do |format|
      format.html
      format.json { render json: @tutorials }
    end
  end

  def show
=begin
    @tutorial = Tutorial.find(params[:id])
    if request.path != tutorials_path(@tutorial)
      redirect_to @tutorial, status: :moved_permanently
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @tutorial }
      end
    end

=end
    @tutorial = Tutorial.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial }
    end
    
  end

  def new
    @tutorial = Tutorial.new
    respond_to do |format|
      format.html
      format.json { render json: @tutorial }
    end
  end

  def edit
    @tutorial = Tutorial.find(params[:id])
  end

  def create
=begin    
    @tutorial = Tutorial.new(params[:tutorial])
    respond_to do |format|
      if @tutorial.save
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
        format.json { render json: @tutorial, status: :created, location: @tutorial }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
=end    
  end

  def update
    @tutorial = Tutorial.find(params[:id])

    respond_to do |format|
      if @tutorial.update_attributes(params[:tutorial])
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
    @tutorial.destroy

    respond_to do |format|
      format.html { redirect_to tutorials_url }
      format.json { head :no_content }
    end
  end

  def list_tutorials
    #byebug
    @tutorials = Tutorial.all
    respond_to do |format|
      format.json { render json: @tutorials }
    end
  end

  def show_tutorial
    #byebug
    @tutorial = Tutorial.find_by_id(params[:id])
    respond_to do |format|
      format.json { render json: @tutorial }
    end
  end

  def show_tutorial_details
  end

end
