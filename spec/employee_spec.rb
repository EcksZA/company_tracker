require 'spec_helper'

describe Employee do
  it "belongs to a division" do
    engineering = Division.new({:name => "Engineering"})
    engineering.save
    accounting = Division.new({:name => "Accounting"})
    accounting.save
    employee1 = Employee.new({:name => "John Smith", :division_id => engineering.id})
    employee1.save
    employee1.division.should eq engineering
  end

  it "ha many projects but only one that is current" do
    employee_1 = Employee.new({:name => "John Smith"})
    employee_1.save
    project_1 = Projects.new({:name => "Roadworks", :current => true, :employee_id => employee_1.id})
    project_1.save
    employee_1.project.should eq project_1
  end
end


