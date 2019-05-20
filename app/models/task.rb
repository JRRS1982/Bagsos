class Task < ApplicationRecord

  validates :title, presence: true, length: { in: 12..100 }
  validates :description, presence: true, length: { in: 50..500 }

end
