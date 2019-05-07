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

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
