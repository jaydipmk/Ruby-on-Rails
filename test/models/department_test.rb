# == Schema Information
#
# Table name: departments
#
#  id         :bigint(8)        not null, primary key
#  Name       :string
#  Remark     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :string
#

require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
