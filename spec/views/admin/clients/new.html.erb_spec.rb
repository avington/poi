require 'spec_helper'

describe "admin_clients/new.html.erb" do
  before(:each) do
    assign(:client, stub_model(Admin::Client).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_clients_path, :method => "post" do
    end
  end
end
