class AddDatePlayedToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :date_played, :date_select
  end
end
