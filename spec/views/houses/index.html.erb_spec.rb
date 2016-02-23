require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        :address => "Address",
        :city => "City",
        :active => false
      ),
      House.create!(
        :address => "Address",
        :city => "City",
        :active => false
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
