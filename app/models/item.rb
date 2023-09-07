class Item < ApplicationRecord
  validates :item_name, presence: true
  belongs_to :user

  def self.search(search)
    if search != ""
      Item.where('text LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
