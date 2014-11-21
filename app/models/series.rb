class Series < ActiveRecord::Base
  attr_accessible :name, :series_picture_content_type, :series_picture_file_name, 
  	:series_picture_file_size, :series_picture_updated_at, :short_description, :slug, :status, :tag, 
  	:total_view, :vote_up

  	
end
