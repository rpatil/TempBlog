class HomeController < ApplicationController
  def index
  end

  def default
  end

  def blog
  end

  def show_tutorial_using_slug
  	@tutorial = Tutorial.find_by_slug(params[:slug])
  	byebug

  	@tutorial_writer = @tutorial.user.name.present? ? true : false
  	@tutorial_details = false

		if @tutorial.github_link.present? or 
			@tutorial.demo_link.present? or 
				@tutorial.related_link.present? or 
					@tutorial.attachment_name.present? or 
						@tutorial.video_url.present?
			@tutorial_details = true
		end

		respond_to do |format|
      format.html
      format.json { render json: @tutorial }
      # => custom_json_for_tutorial(@tutorial)
    end
  end
end



=begin
private
  def custom_json_for_tutorial(tutorial)
  	byebug
    blog_data = 
	      { :tutorial_id => tutorial.id,
	        :title => tutorial.title.to_s,
	        :author_name => tutorial.user.name.to_s,
	        :mode => tutorial.mode.to_s,
	        :time => tutorial.time,
	        :primary_category => tutorial.primary_category,
	        :categories => tutorial.categories,
	        :state => tutorial.state,
	        :publish_date => tutorial.publish_date,
	        :tutorial_type => tutorial.tutorial_type,
	        :content_introduction => tutorial.content_introduction,
	        :content_main => tutorial.content_main,
	        :conclusion => tutorial.conclusion,
	        :github_link => tutorial.github_link,
	        :demo_link => tutorial.demo_link,
	        :related_link => tutorial.related_link,
	        :attachment_name => tutorial.attachment_name,
	        :attachment_link => tutorial.attachment_link,
	        :video_url => tutorial.video_url,
	        :vote_up => tutorial.vote_up,
	        :total_view => tutorial.total_view,
	        :slug => tutorial.slug,
	        :created_at => tutorial.created_at
	      }    
	    #blog_data.to_json
	    puts blog_data
	    return blog_data
  end
=end
