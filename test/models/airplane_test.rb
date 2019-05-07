# == Schema Information
#
# Table name: airplanes
#
#  id         :bigint(8)        not null, primary key
#  rows       :text
#  cols       :text
#  name       :text
#  bonus      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AirplaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
