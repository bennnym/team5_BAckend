# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :text
#  admin           :boolean
#

class User < ApplicationRecord
  has_secure_password
  has_many :flights, :through => :reservations
  has_many :reservations
  validates :username, :presence => true, :uniqueness => true
end
