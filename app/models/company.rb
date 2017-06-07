class Company < ApplicationRecord
  belongs_to :user

  validates :name, :email, :description, :address, :city, :state, :zipcode,
   :neighboorhood, presence: true
end
