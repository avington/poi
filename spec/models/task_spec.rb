require 'spec_helper'

describe Task do
  context "Creation" do
    it 'should have a default rate of 80' do
      task = Factory(:task)
      task.rate.to_i.should == 80  
    end
    it 'should require name and rate' do
      task = Factory(:task)
      task.save.should be true
      task.name = nil
      task.save.should be false
      task.name = "steve"
      task.rate = nil
      task.save.should be false
    end
  end
end
