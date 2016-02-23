require 'rails_helper'

RSpec.describe "residents/new", type: :view do
  before(:each) do
    assign(:resident, Resident.new(
      :full_name => "MyString",
      :id_number => "MyString",
      :room_number => 1
    ))
  end

  it "renders new resident form" do
    render

    assert_select "form[action=?][method=?]", residents_path, "post" do

      assert_select "input#resident_full_name[name=?]", "resident[full_name]"

      assert_select "input#resident_id_number[name=?]", "resident[id_number]"

      assert_select "input#resident_room_number[name=?]", "resident[room_number]"
    end
  end
end
