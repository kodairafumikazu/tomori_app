class Order < ApplicationRecord
  belongs_to :user
  belongs_to :owner
  belongs_to :shopping
  #has_one    :address
end
