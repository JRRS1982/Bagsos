# frozen_string_literal: true

class Task < ApplicationRecord

  belongs_to :user

  validates :title, presence: true, length: { in: 12..100 }
  validates :description, presence: true, length: { in: 50..500 }
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_changed? }
  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                                     if: ->(obj) { obj.latitude.present? && obj.latitude_changed? && obj.longitude.present? && obj.longitude_changed? }
end
