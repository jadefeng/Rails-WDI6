# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :mixtapes

	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 2, :maximum => 20}
	validate :email, :presence => true, :uniqueness => true

end
