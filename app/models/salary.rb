# == Schema Information
#
# Table name: salaries
#
#  id             :bigint(8)        not null, primary key
#  Date_Of_Salary :date
#  Amount         :decimal(, )
#  emp_master_id  :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :integer          default(0)
#

class Salary < ApplicationRecord
  belongs_to :emp_master
  validates :Date_Of_Salary,presence: true
  validates :Amount,presence: true, numericality: true
end
