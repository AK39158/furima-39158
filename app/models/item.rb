class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
   has_one    :order

  with_options presence: true do
    validates :user
    validates :image
    validates :name
    validates :introduction
    validates :price, format: { with: /\A[0-9]+\z/ },numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :category_id
    validates :item_condition_id
    validates :shipping_cost_id
    validates :prefecture_id
    validates :shipping_date_id
  end

  has_one_attached :image

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :prefecture_id
    validates :item_condition_id
    validates :shipping_cost_id
    validates :shipping_date_id
  end
end
