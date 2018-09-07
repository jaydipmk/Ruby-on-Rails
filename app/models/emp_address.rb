# == Schema Information
#
# Table name: emp_addresses
#
#  id            :bigint(8)        not null, primary key
#  Address       :string
#  Distict       :string
#  State         :string
#  Nation        :string
#  emp_master_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :integer          default(0)
#

class EmpAddress < ApplicationRecord
  belongs_to :emp_master  
  validates :Address,:Distict,:State,:Nation,presenece: true 
end
