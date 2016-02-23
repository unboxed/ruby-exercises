require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      :address => "MyString",
      :city => "MyString",
      :active => false
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input#house_address[name=?]", "house[address]"

      assert_select "input#house_city[name=?]", "house[city]"

      assert_select "input#house_active[name=?]", "house[active]"
    end
  end
end
