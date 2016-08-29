class CreateStdoctorregists < ActiveRecord::Migration
  def change
    create_table :stdoctorregists do |t|
      t.text :treatsubject
      t.text :treatdescript
      t.text :treatcondition
      t.boolean :completion, null: false, default: false

      t.integer :evaluation_intby_pt
      t.integer :evaluation_intby_dr
      
      t.text :evaluation_strby_pt
      t.text :evaluation_strby_dr

      t.references :dpatient, index: true, foreign_key: true
      t.references :dstdoctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
