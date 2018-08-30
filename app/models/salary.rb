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
#

class Salary < ApplicationRecord
  belongs_to :emp_master
end
