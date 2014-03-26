class CreateCollegeStreams < ActiveRecord::Migration
  def change
    create_table :college_streams do |t|
      t.integer :college_id
      t.integer :category_id
      t.integer :stream_category_id

      t.timestamps
    end
  end
end
