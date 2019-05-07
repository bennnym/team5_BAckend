# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :text
#  user_id    :text
#

class Reservation < ApplicationRecord
end
