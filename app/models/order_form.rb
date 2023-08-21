class クラス名
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id, :house_number, :buildingzz_name, :phone_number

  
  with_options presence: true do
    validates :post_code
    validates :prefecture_id
    validates :house_number
    validates :buildingzz_name
    validates :phone_number
  end
  
  def save
    