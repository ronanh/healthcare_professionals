class HealthcareProfessional < ActiveRecord::Base
	validates :firstname, presence: true
	validates :lastname,  presence: true
	validates :address,    presence: true
	validates :speciality, presence: true

end
