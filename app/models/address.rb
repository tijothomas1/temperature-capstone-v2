class Address < ActiveRecord::Base

  belongs_to :address

  validates :address_line1, :address_line2, :city, :state, :zipcode, presence: true
end
