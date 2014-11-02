class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :avatar, :text, :default => 'http://upload.wikimedia.org/wikipedia/commons/2/22/Turkish_Van_Cat.jpg'
  end
end
