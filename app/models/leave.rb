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
#  status          :integer          default(0)
#

class Leave < ApplicationRecord
	enum status: { Not_Approved: 0 , Approved: 1 , Deleted: 2 }
	validates :Start_Date,:End_Date,:Reason,presence: true
end
