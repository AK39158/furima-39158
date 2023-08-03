class Item < ApplicationRecord
   # アソシエーション
   belongs_to :user
   has_one    :order

  with_options presence: true do
    validates :user
    validates :image
    validates :name 
    validates :introduction
    validates :p:redirect
    validates :category_:id 
    validates :item_condition_id
    validates :shipping_cost_id
    validates :prefecture_id
    validates :shipping_date_id

end
