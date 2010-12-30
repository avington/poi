require 'spec_helper'

describe Project do
  before :all do
    Factory(:task, :name => "admin")
    Factory(:task, :name => "development")
    Factory(:task, :name => "support")
  end
  context "Creating a project" do
    it 'should have a client' do
      project = Factory(:project) 
      project.client.should_not be nil
    end
    it 'should have an hourly cap' do
      project = Factory(:project) 
      project.hour_cap.should > 0
    end
    it 'should have admin, development, and support tasks by default' do
      project = Factory(:project) 
      project.tasks.where(:name => 'admin').count.should == 1
      project.tasks.where(:name => 'development').count.should == 1
      project.tasks.where(:name => 'support').count.should == 1
    end
    it 'should make sure hour cap is a number' do
      project = Factory(:project) 
      project.hour_cap = "larry"
      project.save.should == false

    end
    it 'should have a start date' do
      project = Factory(:project) 
      project.started_at.should == Date.today

    end
  end
end
