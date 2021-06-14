class Guard < ApplicationRecord
  belongs_to :worker
  belongs_to :medical_center
end
