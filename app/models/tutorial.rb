class Tutorial < ActiveRecord::Base
  attr_accessible :attachment_link, :categories, :conclusion, :content_introduction, :content_main, 
  :demo_link, :github_link, :mode, :primary_category, :publish_date, :related_link, :slug, :state, :time, 
  :title, :total_view, :tutorial_type, :user_id, :video_url, :vote_up, :content_short_introduction, 
  :updated_by_writer, :reviewed_by, :reviewed_date, :review_comment

  belongs_to :user

	def slug
    title.strip.downcase.gsub(/[:,'"%^&*+=<>.`~]/,"").gsub("  ", " ").gsub(" ", "-")
	end

	def to_param
	  "#{slug}".parameterize
	end

  extend FriendlyId
  friendly_id :title, use: [ :slugged, :history ] 	

end
