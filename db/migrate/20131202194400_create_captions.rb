class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :sentence
      t.integer :meme_id
      t.string :picture

      t.timestamps
    end
  end
end
