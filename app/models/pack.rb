class Pack < ApplicationRecord
  has_one_attached :image

  scope :published, -> { Pack.where(is_publish: true) }
  scope :unpublished, -> { Pack.where(is_publish: false ) }

  def self.set_dummy_datas
    20.times do
      Pack.create(
        product_name: "hi",
        company_name: "hello",
        price: 1000
      )
    end
  end
end
