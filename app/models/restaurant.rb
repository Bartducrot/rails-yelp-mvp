class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true
end


# class Restaurant < ApplicationRecord
#   validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
#   validates :name, uniqueness: true, presence: true
#   validates :address, presence: true
# end
