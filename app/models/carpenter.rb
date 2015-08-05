class Carpenter < ActiveRecord::Base
  has_many :goods, dependent: :destroy
end
