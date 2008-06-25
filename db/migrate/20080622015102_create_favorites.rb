class CreateFavorites < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
      t.string :url
      t.string :description
      t.text :notes
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :favorites
  end
end
