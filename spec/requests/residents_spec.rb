# == Schema Information
#
# Table name: residents
#
#  id            :integer          not null, primary key
#  full_name     :string
#  date_of_birth :date
#  id_number     :string
#  room_number   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  house_id      :integer
#

require 'rails_helper'

RSpec.describe "Residents", type: :request do
  describe "GET /residents" do
    it "works! (now write some real specs)" do
      get residents_path
      expect(response).to have_http_status(200)
    end
  end
end
