class Ord < ApplicationRecord
  belongs_to :user
  has_many :ord_items

  before_save :update_total
  before_create :update_status

  def calculate_total
    self.ord_items.collect { |pro| pro.item.price * pro.item }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
