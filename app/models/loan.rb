class Loan < ActiveRecord::Base
    belongs_to :buyer, dependent: :delete
    has_many :payment, dependent: :destroy
end
