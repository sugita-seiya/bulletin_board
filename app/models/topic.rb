class Topic < ApplicationRecord
  has_many :posts

  def self.search(search)
    return Topic.all unless search
    Topic.where('title LIKE(?)', "%#{search}%")
  end
end
