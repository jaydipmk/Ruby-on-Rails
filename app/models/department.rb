# == Schema Information
#
# Table name: departments
#
#  id         :bigint(8)        not null, primary key
#  Name       :string
#  Remark     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer
#

class Department < ApplicationRecord
	validates :Name,:Remark,presence: true
	has_many :designation
	enum status: {Active: 0, InActive: 1}
end
