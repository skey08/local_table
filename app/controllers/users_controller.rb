class User < ActiveRecord::Base
  has_many :favorites
  has_many :favorite_goods, through: :favorites, source: :favorited, source_type: 'Good'
end
