require 'spec_helper'

describe "admin/clients/edit.html.erb" do
  before(:each) do
    @client = Factory(:client) # assigns @client the mock
  end

  it "renders the edit client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_client_path(@client), :method => "post" do
    end
  end
end
