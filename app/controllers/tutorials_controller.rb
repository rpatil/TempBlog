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
    @tutorial = Tutorial.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial }
    end    
  end

  def new
    @tutorial = Tutorial.new

    @tutorial_mode = TutorialMode.all
    @tutorial_state = TutorialState.all
    @tutorial_time = TutorialTime.all
    @tutorial_type = TutorialType.all
    @primary_category = PrimaryCategory.all
    @tags = Tag.all
    @series = Series.all

    respond_to do |format|
      format.html
      format.json { render json: @tutorial }
    end
  end

  def edit
    @tutorial_mode = TutorialMode.all
    @tutorial_state = TutorialState.all
    @tutorial_time = TutorialTime.all
    @tutorial_type = TutorialType.all
    @primary_category = PrimaryCategory.all
    @tags = Tag.all
    @series = Series.all

    @tutorial = Tutorial.find(params[:id])
  end

  def create
    @tutorial = Tutorial.new(params[:tutorial])
    @tutorial.user_id = 1
    @tutorial.updated_by_writer = Time.now
    respond_to do |format|
      if @tutorial.save
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
        format.json { render json: @tutorial, status: :created, location: @tutorial }
      else
        format.html { render action: "new" }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
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

  def tutorials_list
    @tutorials = Tutorial.all
    respond_to do |format|
      format.json do
        render :json => custom_json_for_tutorial_list(@tutorials)
      end
    end
  end

  def show_tutorial
    @tutorial = Tutorial.find_by_id(params[:id])
    respond_to do |format|
      format.json { render json: @tutorial }
    end
  end

  def show_tutorial_details
  end

  def custom_json_for_tutorial_list(tutorials)
    #byebug
    tutorials_list=[]

    tutorials.each do |tutorial|
      tutorials_list <<  
        { 
          :tutorial_id => tutorial.id,
          :title => tutorial.title.to_s,
          :author_name => tutorial.user.name.to_s,
          :mode => tutorial.mode.to_s,
          :time => tutorial.time,
          :primary_category => tutorial.primary_category,
          :categories => tutorial.categories,
          :state => tutorial.state,
          :publish_date => tutorial.publish_date,
          :tutorial_type => tutorial.tutorial_type,
          :content_short_introduction => tutorial.content_short_introduction,
          :content_introduction => tutorial.content_introduction,
          :content_main => tutorial.content_main,
          :conclusion => tutorial.conclusion,
          :github_link => tutorial.github_link,
          :demo_link => tutorial.demo_link,
          :related_link => tutorial.related_link,
          :attachment_link => tutorial.attachment_link,
          :video_url => tutorial.video_url,
          :vote_up => tutorial.vote_up,
          :total_view => tutorial.total_view,
          :slug => tutorial.slug,
          :created_at => tutorial.created_at
        }
    end
    tutorials_list.to_json
  end
end
