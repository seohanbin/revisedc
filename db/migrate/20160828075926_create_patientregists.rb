class CreatePatientregists < ActiveRecord::Migration
  def change
    create_table :patientregists do |t|
      t.text :chiefcomplaint
      t.text :pipainwhen
      t.text :pisustain
      t.text :piprogress
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
