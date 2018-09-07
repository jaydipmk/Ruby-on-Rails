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

class Designation < ApplicationRecord
  belongs_to :department
  validates :post, presence: true, length: {maximum: 50}
end
