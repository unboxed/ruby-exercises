class User < ActiveRecord::Base
  validates :full_name, presence: true
end
