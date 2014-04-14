class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  attr_accessible :cart_id, :product_id, :product
  # attr_accessible :product, :product_id, :id, :updated_at, :cart_id, :created_at
end
