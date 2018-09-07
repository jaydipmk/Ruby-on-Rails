# == Schema Information
#
# Table name: designations
#
#  id            :bigint(8)        not null, primary key
#  post          :string
#  department_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :integer          default(0)
#

require 'test_helper'

class DesignationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
