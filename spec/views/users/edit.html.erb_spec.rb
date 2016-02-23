require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :full_name => "MyString",
      :active => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_full_name[name=?]", "user[full_name]"

      assert_select "input#user_active[name=?]", "user[active]"
    end
  end
end
