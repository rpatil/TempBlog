class Tutorial < ActiveRecord::Base
  attr_accessible :attachment_link, :attachment_name, :categories, :conclusion, 
  :content_introduction, :content_main, :demo_link, :github_link, :mode, 
  :primary_category, :publish_date, :related_link, :slug, :state, :time, 
  :title, :total_view, :tutorial_type, :user_id, :video_url, :vote_up
=begin
  extend FriendlyId
  friendly_id :title, use: [ :slugged, :history ] 
=end
	def to_param
	  "#{id} #{title}".parameterize
	end

end