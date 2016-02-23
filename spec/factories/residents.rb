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

FactoryGirl.define do
  factory :resident do
    full_name "MyString"
    date_of_birth "2016-02-23"
    id_number "MyString"
    room_number 1
  end
end
