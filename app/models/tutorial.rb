class Tutorial < ActiveRecord::Base
  attr_accessible :attachment_link, :categories, :conclusion, :content_introduction, :content_main, 
  :demo_link, :github_link, :mode, :primary_category, :publish_date, :related_link, :slug, :state, :time, 
  :title, :total_view, :tutorial_type, :user_id, :video_url, :vote_up, :content_short_introduction, 
  :updated_by_writer, :reviewed_by, :reviewed_date, :review_comment, :tutorial_order, :series_id, 
  :tutorial_picture_content_type, :tutorial_picture_file_name, :tutorial_picture_file_size, 
  :tutorial_picture_updated_at

  belongs_to :user
  belongs_to :series

  #belongs_to :primary_category, :foreign_key => "name"

	#def slug
#    title.strip.downcase.gsub(/[:,'"%^&*+=<>.`~]/,"").gsub("’","").gsub("  ", " ").gsub(" ", "-")
 #   title.strip.downcase.gsub("  ", " ").gsub(" ", "-")
 # end

	def to_param
	  title.strip.downcase.parameterize
	end

  extend FriendlyId
  friendly_id :title, use: [ :slugged, :history ]

end
