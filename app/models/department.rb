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

class Department < ApplicationRecord
end
