class Payment < ActiveRecord::Base
    belongs_to :loan, dependent: :delete
end
