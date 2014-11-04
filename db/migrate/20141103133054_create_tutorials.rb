class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title,                :null => false
      t.integer :user_id,             :null => false
      t.string :mode,                 :null => false                     
      t.string :time,                 :null => false
      t.string :primary_category,     :null => false
      t.string :categories
      t.string :state,                :null => false
      t.datetime :publish_date
      t.string :tutorial_type,        :null => false
      t.text :content_introduction,   :null => false
      t.text :content_main
      t.text :conclusion
      t.string :github_link
      t.string :demo_link
      t.string :related_link
      t.string :attachment_name
      t.string :attachment_link
      t.string :video_url
      t.integer :vote_up,             :null => false, :default => 0
      t.integer :total_view,          :null => false, :default => 0
      t.string :slug,                 :null => false

      t.timestamps
    end

    add_index :tutorials, :slug
  end
end
