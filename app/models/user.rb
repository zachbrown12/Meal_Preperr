class User < ApplicationRecord
    has_many :available_meals
    has_many :recipes, through: :available_meals

    validates :name, presence: true 
    validates :username, presence: true 
    validates :password, presence: true 
    has_secure_password


end
