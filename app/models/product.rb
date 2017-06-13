class Product < ApplicationRecord
	has_many :pics, dependent: :destroy
	accepts_nested_attributes_for :pics, allow_destroy: true, reject_if: :all_blank
end
