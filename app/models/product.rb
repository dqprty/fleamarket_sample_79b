class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :images,dependent: :destroy
  belongs_to :category, optional: true
  belongs_to :user, optional: true

  enum status: [:brandNew, :almostNew, :noDamage, :slightlyDamaged, :damaged, :bad]

  enum shipping_cost: [:included, :excluded]
  enum shipping_from: [:hokkaido, :aomori, :iwate, :miyagi, :akita, :yamagata, :fukushima,
    :ibaraki, :tochigi, :gunma, :saitama, :chiba, :tokyo,:kanagawa,
    :niigata, :toyama, :ishikawa, :fukui, :yamanashi, :nagano,
    :gifu, :sizuoka, :aichi, :mie, :shiga, :kyoto, :osaka,
    :hyogo, :nara, :wakayama, :tottori, :shimane, :okayama,
    :hiroshima, :yamaguchi, :tokushima, :kagawa, :ehime,
    :kochi, :fukuoka, :saga, :nagasaki, :kumamoto, :oita,
    :miyazaki, :kagoshima , :okinawa]
    
  enum days:[:maxTwo, :maxThree, :maxSeven]

end
