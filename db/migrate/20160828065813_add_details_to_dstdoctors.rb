class AddDetailsToDstdoctors < ActiveRecord::Migration
  def change
    add_column :dstdoctors, :spstr, :string
    add_column :dstdoctors, :name, :string
    add_column :dstdoctors, :nickname, :string
    add_column :dstdoctors, :phonenum, :string
    add_column :dstdoctors, :age, :integer
    add_column :dstdoctors, :gender, :integer
    add_column :dstdoctors, :birth, :date
    add_column :dstdoctors, :agreement, :boolean
    add_column :dstdoctors, :university, :string
    add_column :dstdoctors, :studentid, :string
  end
end
