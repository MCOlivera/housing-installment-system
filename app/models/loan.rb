class Loan < ActiveRecord::Base
    belongs_to :buyer, dependent: :destroy
    has_many :payment, dependent: :destroy
end
