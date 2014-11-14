class CreateTutorialTimes < ActiveRecord::Migration
  def change
    create_table :tutorial_times do |t|
      t.string :name
      t.boolean :status,	:default => true

      t.timestamps
    end

    TutorialTime.create(name: "Short")
		TutorialTime.create(name: "Medium")
    TutorialTime.create(name: "Long")
  end
end
