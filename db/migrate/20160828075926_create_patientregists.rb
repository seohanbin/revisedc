class CreatePatientregists < ActiveRecord::Migration
  def change
    create_table :patientregists do |t|
      t.text :chiefcomplaint
      t.string :pipainwhen
      t.string :pisustain
      t.string :piprogress
      t.boolean :completion
      t.integer :evaluation
      t.references :dpatient, index: true, foreign_key: true
      t.references :dstdoctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
