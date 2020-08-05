class Comment < ApplicationRecord
  belongs_to :product, dependent: :destroy
  belongs_to :user, optional: true

  validates :text, presence: true, lenght:{maximum: 300}
end
