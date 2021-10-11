class Album < ApplicationRecord
    validates :Title,presence: true
    validates :Description,presence: true

end
