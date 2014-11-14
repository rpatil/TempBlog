class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,                   :null => false
      t.string :email,                  :null => false
      t.text :introduction,             :null => false
      t.string :current_position
      t.string :company
      t.string :website
      t.string :skype_id
      t.string :follow_twitter
      t.string :follow_linkedin
      t.string :follow_facebook
      t.string :follow_stackoverflow
      t.string :follow_github
      t.boolean :status,                :default => true

      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      t.string    :single_access_token, :null => false
      t.string    :perishable_token,    :null => false

      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip

      t.timestamps
    end

    User.create(name: "Rahul P", email: "rahul@mailinator.com", introduction: "Blog Writer", current_position: "Soft Eng", company: "Cybage Software, Pune" ,password: "12345", password_confirmation: "12345" )
    User.create(name: "Sandy", email: "sandy@mailinator.com", introduction: "Blog Writer", current_position: "Recruitment Head", company: "RiseMart, Pune", password: "12345", password_confirmation: "12345" )
    User.create(name: "Deva", email: "deva@mailinator.com", introduction: "Blog Writer", current_position: "Soft Eng", company: "Capgemini Software, Pune", password: "12345", password_confirmation: "12345" )
    User.create(name: "Santosh", email: "santosh@mailinator.com", introduction: "Blog Writer", current_position: "Testing Engineer", company: "Clear Point, Pune", password: "12345", password_confirmation: "12345" )
    User.create(name: "Chanchu", email: "chanchu@mailinator.com", introduction: "Blog Writer", current_position: "Soft Eng", company: "Cybage Software. Pune", password: "12345", password_confirmation: "12345" )
  end
end