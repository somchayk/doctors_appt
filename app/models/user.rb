class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
end
