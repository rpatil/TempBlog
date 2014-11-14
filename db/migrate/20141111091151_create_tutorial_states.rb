class CreateTutorialStates < ActiveRecord::Migration
  def change
    create_table :tutorial_states do |t|
      t.string :name
      t.boolean :status,	:default => true

      t.timestamps
    end

    TutorialState.create(name: "Draft")
    TutorialState.create(name: "Hide")
    TutorialState.create(name: "Publish")    
    TutorialState.create(name: "Discard")    
    
  end
end
