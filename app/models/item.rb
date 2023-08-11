class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
   has_one    :order

  with_options presence: true do
    validates :user
    validates :image
    validates :name
    validates :introduction
    validates :price
    validates :category_id
    validates :item_condition_id
    validates :shipping_cost_id
    validates :prefecture_id
    validates :shipping_date_id
  end
end
