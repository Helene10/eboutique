class OrdItem < ApplicationRecord
  belongs_to :item
  belongs_to :ord
end
