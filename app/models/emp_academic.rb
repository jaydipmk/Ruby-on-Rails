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
  belongs_to :emp_master
end
