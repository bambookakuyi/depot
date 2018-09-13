class LineItem < ApplicationRecord
  belongs_to :prder, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
