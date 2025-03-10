class Patient < ApplicationRecord
    validates :name, :age, :email, :location, :gender, :amount, presence:true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
end
