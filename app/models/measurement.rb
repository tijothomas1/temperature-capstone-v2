class Measurement < ActiveRecord::Base

  belongs_to :address

  validates :reading presence: true
end