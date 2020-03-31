class Topic < ApplicationRecord
  has_many :posts


  validates :title, presence: true
  def self.search(search)
    return Topic.all unless search
    Topic.where('title LIKE(?)', "%#{search}%")
  end
end
