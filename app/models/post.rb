class Post < ApplicationRecord
  validates :title, presence: true,
                    length: {minimum: 15, maximum: 75},
                    uniqueness: {case_sensitive: false}
end
