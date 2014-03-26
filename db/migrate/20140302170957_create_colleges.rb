class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :information
      t.string :year
      t.string :address1
      t.string :address2
      t.string :pincode
      t.string :landline
      t.string :mobile
      t.integer :collage_type
      t.string :tution_fee
      t.string :college_website
      t.string :college_email
      t.string :facebook_link
      t.string :twitter_link
      t.string :linkedin_link

      t.timestamps
    end
  end
end
