# == Schema Information
#
# Table name: login_masters
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :string
#  status     :integer          default(0)
#

class LoginMaster < ApplicationRecord
  has_one :emp_master,dependent: :destroy
  validates :username, presence: true, length: {maximum: 50}
  
  has_secure_password
  validates :password, presence: true, length: {minimum: 8}
  #enum 
	def self.from_omniauth(auth)
      LoginMaster.create do |user|
      #user.provider = auth.provider
      #user.id = auth.uid
      user.username = auth.info.name
      user.password = "131313"
      user.role = "Employee"
      user.save!
    end
  end
end
