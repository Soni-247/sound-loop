class Transaction < ApplicationRecord
  belongs_to :buyer
  belongs_to :seller
  belongs_to :listings
end
