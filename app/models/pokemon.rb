class Pokemon < ApplicationRecord

    #field validations 
    validates :number, presence: true
    validates :name, presence: true
end

Pokemon.create(:name => nil).valid? => false