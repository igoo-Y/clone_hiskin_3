require 'open-uri'

class Pack < ApplicationRecord
  has_one_attached :image
  has_many :carts, dependent: :destroy
  has_many :users, through: :carts

  scope :published, -> { Pack.where(is_publish: true) }
  scope :unpublished, -> { Pack.where(is_publish: false ) }

  def self.set_dummy_datas
    20.times do |i|
      pack = Pack.new(
        product_name: Faker::Coffee.blend_name,
        company_name: Faker::Coffee.unique.origin,
        price: [1000, 2000, 3000, 4000, 5000].sample
      )

      sample_image = open("https://picsum.photos/200/300?random=#{i}")

      pack.image.attach(io: sample_image, filename: "sample_#{i}.jpg")

      pack.save
    end
  end
end
