class Buyer < ActiveRecord::Base
    has_many :loan, dependent: :destroy
    
    def self.search(search)
     if search
       where(['CONCAT(first_name, " ",  family_name) LIKE ?', "%#{search}%"])
     else
      scoped
     end
    end
end
