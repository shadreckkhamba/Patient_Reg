class Patient < ApplicationRecord
    validates :name, :age, :email, :position, :gender, :amount, presence:true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
end
