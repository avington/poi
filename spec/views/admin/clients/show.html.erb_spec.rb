require 'spec_helper'

describe "admin_clients/show.html.erb" do
  before(:each) do
    @client = assign(:client, stub_model(Admin::Client))
  end

  it "renders attributes in <p>" do
    render
  end
end
