class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :score
      t.integer :fairways
      t.integer :greens
      t.integer :putts
      t.string :notes
      t.date :date_played

      t.timestamps
    end
  end
end
