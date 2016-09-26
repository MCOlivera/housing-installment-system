class Buyer < ActiveRecord::Base
    has_one :spouse, dependent: :destroy
    has_many :employment_history, dependent: :destroy
end
