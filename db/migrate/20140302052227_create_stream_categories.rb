class CreateStreamCategories < ActiveRecord::Migration
  def change
    create_table :stream_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
