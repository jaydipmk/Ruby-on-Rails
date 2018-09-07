# == Schema Information
#
# Table name: emp_academics
#
#  id                  :bigint(8)        not null, primary key
#  Degree              :string
#  College_School_Name :string
#  University_Name     :string
#  Year_Of_Passing     :string
#  Result              :string
#  emp_master_id       :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class EmpAcademic < ApplicationRecord
	validates :Degree,:College_School_Name,:University_Name,presence: true,length: {maximum: 50}
	validates :Year_Of_Passing,presence: true, numericality: true,length: {is: 4}
	validates :Result,presence: true, numericality: true,length: {maximum: 3}
  belongs_to :emp_master
end
