class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one    :order

  belongs_to :category
  belongs_to :prefecture
  belongs_to :item_condition
  belongs_to :shipping_cost
  belongs_to :shipping_date

  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :category_id
    validates :item_condition_id
    validates :shipping_cost_id
    validates :prefecture_id
    validates :shipping_date_id
  end

  

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :prefecture_id
    validates :item_condition_id
    validates :shipping_cost_id
    validates :shipping_date_id
  end

  
  
end
