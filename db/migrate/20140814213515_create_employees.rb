class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.column :name, :varchar
    end
  end
end
