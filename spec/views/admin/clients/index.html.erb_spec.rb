require 'spec_helper'

describe "admin_clients/index.html.erb" do
  before(:each) do
    assign(:admin_clients, [
      stub_model(Admin::Client),
      stub_model(Admin::Client)
    ])
  end

  it "renders a list of admin_clients" do
    render
  end
end
