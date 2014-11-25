class CreatePrimaryCategories < ActiveRecord::Migration
  def change
    create_table :primary_categories do |t|
      t.string :name
      t.string :display_name
      t.boolean :status,	:default => true

      t.timestamps
    end
  end
end