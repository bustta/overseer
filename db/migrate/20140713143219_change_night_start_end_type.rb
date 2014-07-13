class ChangeNightStartEndType < ActiveRecord::Migration
  def change
    change_column :cases, :NightStart, :integer
    change_column :cases, :NightEnd, :integer
  end
end
