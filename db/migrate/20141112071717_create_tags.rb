class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.boolean :status,	:default => true

      t.timestamps
    end
  end
end
