class Person < ApplicationRecord
    attr_accessor :name, :house_id
    validates :name, presence: true

    def initialize(name, house_id)
        @name = name
        @house_id = house_id
    end
end
