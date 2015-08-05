class Carpenter < ActiveRecord::Base
  belongs_to :user
  has_many :goods, dependent: :destroy
end
