class Mentor < ApplicationRecord
    validates :name, :email, presence: true
end
