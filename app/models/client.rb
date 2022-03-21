class Client < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :gyms, through: :memberships

    def total_memberships_price
        memberships.sum(:charge)
    end
end
