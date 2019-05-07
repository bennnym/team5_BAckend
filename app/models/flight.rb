# == Schema Information
#
# Table name: flights
#
#  id          :bigint(8)        not null, primary key
#  date        :text
#  to          :text
#  from        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  airplane_id :text
#

class Flight < ApplicationRecord
  belongs_to :airplane
  
  has_many :reservations
  has_many :users, :through => :reservations
end
