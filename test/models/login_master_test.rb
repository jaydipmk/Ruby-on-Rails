# == Schema Information
#
# Table name: login_masters
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  password   :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LoginMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
