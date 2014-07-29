class AddCaseGeometryColumn < ActiveRecord::Migration
  def change
    add_column :cases, :lat, :decimal
    add_column :cases, :lng, :decimal
  end
end
