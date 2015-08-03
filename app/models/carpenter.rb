class Carpenter < ActiveRecord::Base
  has_many :goods, dependent: :destroy
  belongs_to :user
end
