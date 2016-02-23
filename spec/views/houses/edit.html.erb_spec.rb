require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      :address => "MyString",
      :city => "MyString",
      :active => false
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "input#house_address[name=?]", "house[address]"

      assert_select "input#house_city[name=?]", "house[city]"

      assert_select "input#house_active[name=?]", "house[active]"
    end
  end
end
