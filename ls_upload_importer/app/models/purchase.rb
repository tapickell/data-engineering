class Purchase < ActiveRecord::Base
  belongs_to :item
  belongs_to :purchaser
  validates :item, presence: true
  validates :purchaser, presence: true
end
