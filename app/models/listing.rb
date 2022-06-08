class Listing < ApplicationRecord
  belongs_to :categories
  has_rich_text :description
end
