class Item < ActiveRecord::Base
  belongs_to :merchant
  validates :merchant, presence: true
  has_many :purchases
end
