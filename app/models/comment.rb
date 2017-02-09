class Comment < ApplicationRecord
  belongs_to :post
  validates :email, presence: true
end
