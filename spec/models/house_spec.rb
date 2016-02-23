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

RSpec.describe House, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
