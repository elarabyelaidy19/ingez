class Team < ApplicationRecord 
    has_many :users, dependent: :destroy 
    has_many :masl7as, dependent: :destroy 

    accept_nested_attributes_for :users, allow_destroy: true
end
