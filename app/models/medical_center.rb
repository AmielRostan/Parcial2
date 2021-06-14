class MedicalCenter < ApplicationRecord
  belongs_to :medical_center_type
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
