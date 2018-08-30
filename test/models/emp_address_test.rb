# == Schema Information
#
# Table name: emp_addresses
#
#  id            :bigint(8)        not null, primary key
#  Address       :string
#  Distict       :string
#  State         :string
#  Nation        :string
#  emp_master_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EmpAddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
