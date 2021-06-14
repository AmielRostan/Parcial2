class MedicalCenter < ApplicationRecord
  belongs_to :medical_center_type
  has_many :appointments
  has_many :guards
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
