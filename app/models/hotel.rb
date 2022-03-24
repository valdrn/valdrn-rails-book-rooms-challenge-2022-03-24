class Hotel < ApplicationRecord
  has_many :rooms, dependent: :destroy

  validates :name, :address, presence: true
end
