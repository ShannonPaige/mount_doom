class Item < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category
  belongs_to :itemable, :polymorphic => true
  has_many :item_orders
  has_many :orders, through: :item_orders
  belongs_to :skill_set

  def price
    -1 * skill_set.money
  end
end
