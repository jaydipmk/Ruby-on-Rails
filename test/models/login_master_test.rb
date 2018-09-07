# == Schema Information
#
# Table name: login_masters
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :string
#  status     :integer          default(0)
#

require 'test_helper'

class LoginMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
