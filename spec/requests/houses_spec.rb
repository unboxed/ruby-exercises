# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  date_built :date
#  address    :string
#  city       :string
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe "Houses", type: :request do
  describe "GET /houses" do
    it "works! (now write some real specs)" do
      get houses_path
      expect(response).to have_http_status(200)
    end
  end
end
