class CreateTutorialModes < ActiveRecord::Migration
  def change
    create_table :tutorial_modes do |t|
      t.string :name
      t.boolean :status,	:default => true

      t.timestamps
    end
  end
end
