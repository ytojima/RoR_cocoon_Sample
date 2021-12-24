class AlbumTrack < ApplicationRecord
  # バリデーション
  validates :title, presence: true

  # アソシエーション
  belongs_to :album
end
