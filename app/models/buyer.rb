class Buyer < ActiveRecord::Base
    has_many :loan, dependent: :destroy
end
