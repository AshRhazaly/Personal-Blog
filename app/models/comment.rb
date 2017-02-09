class Comment < ApplicationRecord
  belongs_to :post
  validates :name, presence: true
  validates :email, email_format: { message: "doesn't look like an email address" },
                    :presence => true
  validates :content, presence: true
end
