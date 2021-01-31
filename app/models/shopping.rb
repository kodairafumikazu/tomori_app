class Shopping < ApplicationRecord
  belongs_to :owner
  has_one :order
  #extend ActiveHash::Associations::ActiveRecordExtensions
  
  
end
