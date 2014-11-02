class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
    	t.string :name
    	t.string :nationality
    	t.date :dob
    	t.string :period
    	t.text :image
    	t.timestamps 		# creates Create and Update columns
    	# t stands for table
    end
  end
end
