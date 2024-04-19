class Contact < ApplicationRecord
    validates :firstname, presence: true , length: { minimum: 3 ,maximum: 15 }
    validates :lastname, presence: true , length: { minimum: 4}
    validates :email, presence: true  ,   length: { within: 5..50 },uniqueness: true ,format: URI::MailTo::EMAIL_REGEXP
    validates :contactno, presence: true, length: { is: 9} ,numericality: { only_integer: true} ,uniqueness: true
end
