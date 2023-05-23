class Session < ApplicationRecord
    belongs_to :UsersController

    before_validation :generate_session_token

    private
    
    def generate_session_token
        self.token = SecureRandom.urlsafe.base64
    end
end
