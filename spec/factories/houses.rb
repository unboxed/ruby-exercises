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

FactoryGirl.define do
  factory :house do
    date_built "2016-02-23"
    address "MyString"
    city "MyString"
    active false
  end
end
