class Order < ActiveRecord::Base

  belongs_to :customer
  belongs_to :employee
  belongs_to :shipper, :foreign_key => "ship_via"
  has_many :order_details

end
