# == Schema Information
#
# Table name: emp_masters
#
#  id              :bigint(8)        not null, primary key
#  FirstName       :string
#  LastName        :string
#  Username        :string
#  Email           :string
#  Mobile_No       :decimal(, )
#  Nationality     :string
#  Marital_Status  :string
#  login_master_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  emp_address_id  :bigint(8)
#

require 'test_helper'

class EmpMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
