require 'rails_helper'

RSpec.describe "residents/show", type: :view do
  before(:each) do
    @resident = assign(:resident, Resident.create!(
      :full_name => "Full Name",
      :id_number => "Id Number",
      :room_number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Id Number/)
    expect(rendered).to match(/1/)
  end
end
