class Pic < ApplicationRecord
	belongs_to :product, optional: true
end
