class CreateProjectTable < ActiveRecord::Migration
  def change
    create_table :project_tables do |t|
      t.column :name, :varchar
      t.column :current, :boolean
      t.column :employee_id, :int
    end
  end
end
