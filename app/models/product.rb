class Product < ActiveRecord::Base

  has_many :order_details
  belongs_to :supplier
  belongs_to :category

end
