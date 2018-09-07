# == Schema Information
#
# Table name: emp_masters
#
#  id              :bigint(8)        not null, primary key
#  FirstName       :string
#  LastName        :string
#  Username        :string
#  Email           :string
#  Mobile_No       :decimal(, )
#  Nationality     :string
#  Marital_Status  :string
#  login_master_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  status          :integer          default(0)
#

class EmpMaster < ApplicationRecord
	 
		validates :FirstName,:LastName,:Nationality,presence: true, length: {maximum: 50}

		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
		validates :Email,presence: true,length: { maximum: 255 },
							format:{with: VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false}

		validates :Mobile_No, presence: true, numericality: true,length: {minimum: 10, maximum: 15}
		
	  belongs_to :login_master, dependent: :destroy
	  has_one :emp_address, dependent: :destroy
	  has_one :salary, dependent: :destroy
	  has_one :emp_academic, dependent: :destroy
	  accepts_nested_attributes_for :emp_address,:emp_academic, :allow_destroy=> true


end
