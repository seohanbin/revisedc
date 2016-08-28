class AddDetailsToDpatients < ActiveRecord::Migration
  def change
    add_column :dpatients, :spstr, :string
    add_column :dpatients, :name, :string
    add_column :dpatients, :nickname, :string
    add_column :dpatients, :phonenum, :string
    add_column :dpatients, :age, :integer
    add_column :dpatients, :gender, :integer
    add_column :dpatients, :birth, :date
    add_column :dpatients, :agreement, :boolean
    add_column :dpatients, :pmhistory, :text
    add_column :dpatients, :careerjob, :string
    add_column :dpatients, :location, :string
  end
end
