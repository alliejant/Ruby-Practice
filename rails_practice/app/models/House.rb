class House < ApplicationRecord
    attr_accessor :address
    validates :address, presence: true
end