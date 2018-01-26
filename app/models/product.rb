class Product < ApplicationRecord
  belongs_to :collection, optional: true
end
