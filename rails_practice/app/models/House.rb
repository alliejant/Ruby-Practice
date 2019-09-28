class House < ApplicationRecord
    attr_accessor: :address
    validates :address, presence: true

    def initialize(address)
        @address = address
    end
end