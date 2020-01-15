class Story < ApplicationRecord
    has_many :characters, dependent: :destroy
end
