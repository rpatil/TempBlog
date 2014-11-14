class User < ActiveRecord::Base
  attr_accessible :email, :follow_facebook, :follow_github, :follow_linkedin, :follow_stackoverflow, :follow_twitter, :introduction, :name, :status, :website, 
  								:crypted_password, :password_salt, :persistence_token, :single_access_token, :perishable_token,
									:login_count, :failed_login_count, :last_request_at, :current_login_at, :last_login_at, :current_login_ip, :last_login_ip,
                  :current_position, :company, :password, :password_confirmation, :skype_id

  acts_as_authentic do |c|
    c.login_field = 'email'
  end
=begin
  def email=(val)
    write_attribute(:email, val.downcase)
  end
=end

  before_save do
	  #self.website = self.website.downcase
	  self.persistence_token = generate_random_string(21)
	  self.single_access_token = generate_random_string(30)
	  self.perishable_token = generate_random_string(30)
	end

	def generate_random_string(string_length)
  	o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
		return (0...string_length).map { o[rand(o.length)] }.join
	end

end