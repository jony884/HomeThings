class Item < ApplicationRecord
  
  belongs_to :user
  has_one_attached :image

  validates :item_name, presence: true
  validates :content, presence: true, unless: :was_attached?

  def self.search(search)
    if search != ""
      Item.where('text LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end

  def was_attached?
    self.image.attached?
  end
  
end
