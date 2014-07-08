class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :caseId
      t.string :caseType
      t.string :appUnit
      t.string :caseName
      t.string :targetLb
      t.string :digSite
      t.string :digArea
      t.datetime :caseStart
      t.datetime :caseEnd
      t.time :timeStart
      t.time :timeEnd
      t.time :nightStart
      t.time :nightEnd
      t.string :constructionUnit
      t.string :constructionMan
      t.string :constructionTel
      t.string :supervise
      t.string :superviseMan
      t.string :superviseTel
      t.string :examUnit
      t.date :examDate
      t.string :reMark
      t.string :basicCaseId


      t.timestamps
    end
  end
end
