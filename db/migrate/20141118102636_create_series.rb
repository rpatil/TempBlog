class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name,                         :null => false
      t.text :short_description
      t.string :tag,                          :null => false
      t.boolean :status,                      :default => true
      t.string :series_picture_file_name
      t.string :series_picture_content_type
      t.integer :series_picture_file_size
      t.datetime :series_picture_updated_at
      t.integer :vote_up,                     :null => false, :default => 0
      t.integer :total_view,                  :null => false, :default => 0
      t.string :slug

      t.timestamps
    end
  end
end
