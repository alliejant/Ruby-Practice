class Person < ApplicationRecord
    attr_accessor :name, :house_id
    validates :name, presence: true
end
