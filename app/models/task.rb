# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true

  geocoded_by :address
  reverse_geocoded_by :lat, :lng
  after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_changed? }
  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                                     if:     ->(obj) { obj.lat.present? && obj.lng_changed? && obj.lng.present? && obj.lng_changed? }
end
