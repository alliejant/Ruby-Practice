class Person < ApplicationRecord
    validates :name, presence: true

    belongs_to(
        :houses,
        class_name: 'House',
        foregin_key: :house_id,
        primary_key: :id
    )
end
