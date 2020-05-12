class Gossip < ApplicationRecord
  belongs_to :user
  has_one :city, through: :user

  validates :title, presence: true

  def teaser
    if self.content.length > 150
      "#{self.content[0..200]}..."
    else
      self.content
    end
  end
end
