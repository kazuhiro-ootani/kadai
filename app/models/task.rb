class Task < ApplicationRecord
  validates :title,   presence: true
  validates :content, presence: true

  include RankedModel
  ranks :row_order
end
