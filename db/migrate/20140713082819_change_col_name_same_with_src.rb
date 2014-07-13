class ChangeColNameSameWithSrc < ActiveRecord::Migration
  def change
    change_column :cases, :caseId, :CaseID

  end
end
