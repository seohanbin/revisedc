class CreateStdoctorregists < ActiveRecord::Migration
  def change
    create_table :stdoctorregists do |t|
      t.string :treatsubject
      t.string :treatdescript
      t.string :treatcondition
      t.boolean :completion
      t.integer :evaluation
      t.references :dpatient, index: true, foreign_key: true
      t.references :dstdoctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
