require 'spec_helper'

describe Client do
  context "Adding a Client" do
    it 'should require an email' do
      client = Factory(:client)
      client.valid?.should be true
      client.email = nil
      client.save.should be false
    end
    it 'should require a billing contact' do
    
      client = Factory(:client)
      client.valid?.should be true
      client.contact = nil
      client.save.should be false
    end
  end
end
