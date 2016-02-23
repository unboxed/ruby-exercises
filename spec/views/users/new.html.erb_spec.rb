require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :full_name => "MyString",
      :active => false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_full_name[name=?]", "user[full_name]"

      assert_select "input#user_active[name=?]", "user[active]"
    end
  end
end
