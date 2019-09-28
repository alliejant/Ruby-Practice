class House < ApplicationRecord
    validates :address, presence: true

    has_many(
        :residents,
        class_name: 'Person',
        foregin_key: :house_id,
        primary_key: :id
    )
end