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

RSpec.describe Resident, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
