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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
