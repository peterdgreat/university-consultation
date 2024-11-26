class ConsultantRequest < ApplicationRecord
  belongs_to :user
  validates :status, presence: true, inclusion: { in: %w[pending approved rejected] }
end
