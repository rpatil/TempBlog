class TutorialStatesController < ApplicationController

  layout 'admin_application'
  def index
    @tutorial_states = TutorialState.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorial_states }
    end
  end

  def show
    @tutorial_state = TutorialState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial_state }
    end
  end

  def new
    @tutorial_state = TutorialState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutorial_state }
    end
  end

  def edit
    @tutorial_state = TutorialState.find(params[:id])
  end

  def create
    @tutorial_state = TutorialState.new(params[:tutorial_state])

    respond_to do |format|
      if @tutorial_state.save
        format.html { redirect_to @tutorial_state, notice: 'Tutorial state was successfully created.' }
        format.json { render json: @tutorial_state, status: :created, location: @tutorial_state }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial_state.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tutorial_state = TutorialState.find(params[:id])

    respond_to do |format|
      if @tutorial_state.update_attributes(params[:tutorial_state])
        format.html { redirect_to @tutorial_state, notice: 'Tutorial state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutorial_state.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tutorial_state = TutorialState.find(params[:id])
    @tutorial_state.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_states_url }
      format.json { head :no_content }
    end
  end
end
