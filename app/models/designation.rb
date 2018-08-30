# == Schema Information
#
# Table name: designations
#
#  id            :bigint(8)        not null, primary key
#  post          :string
#  department_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Designation < ApplicationRecord
  belongs_to :department
end
