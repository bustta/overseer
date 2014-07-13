class RecreateCaseTable < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :CaseID
      t.string :CaseType
      t.string :AppUnit
      t.string :CaseName
      t.string :TargetLB
      t.string :DigSite
      t.string :DigArea
      t.datetime :CaseStart
      t.datetime :CaseEnd
      t.time :TimeStart
      t.time :TimeEnd
      t.time :NightStart
      t.time :NightEnd
      t.string :ConstructionUnit
      t.string :Construction_Man
      t.string :Construction_Tel
      t.string :Supervise
      t.string :Supervise_Man
      t.string :Supervise_Tel
      t.string :ExamUnit
      t.date :ExamDate
      t.string :ReMark
      t.string :BasicCaseID


      t.timestamps
    end
  end
end
