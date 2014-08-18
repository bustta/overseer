class AddCaseModifiedBy < ActiveRecord::Migration
  def change
    add_column :cases, :modifiedBy, :string
  end
end
