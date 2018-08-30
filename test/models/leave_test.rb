# == Schema Information
#
# Table name: leaves
#
#  id              :bigint(8)        not null, primary key
#  Start_Date      :date
#  End_Date        :date
#  Reason          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#

require 'test_helper'

class LeaveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
