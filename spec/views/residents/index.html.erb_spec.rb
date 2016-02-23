require 'rails_helper'

RSpec.describe "residents/index", type: :view do
  before(:each) do
    assign(:residents, [
      Resident.create!(
        :full_name => "Full Name",
        :id_number => "Id Number",
        :room_number => 1
      ),
      Resident.create!(
        :full_name => "Full Name",
        :id_number => "Id Number",
        :room_number => 1
      )
    ])
  end

  it "renders a list of residents" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
