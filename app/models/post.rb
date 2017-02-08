class Post < ApplicationRecord
  validates :title, length: {maximum: 75}
end
