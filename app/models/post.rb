class Post < ApplicationRecord
  validates :title, presence: true,
                    length: {minimum: 15, maximum: 75},
                    uniqueness: {case_sensitive: false}
  validates :blog_author, presence: true,
                          length: {minimum: 5},
                          format: {without: /\d/, message: "No numbers bro."},
                          uniqueness: {case_sensitive: false}
  validates :content, presence: true,
                      length: {minimum: 250, maximum: 2000},
                      uniqueness: {case_sensitive: false}

  has_many :comments
end
