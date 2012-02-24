require 'digest/sha2'

class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include OmniAuth::Identity::Models::Mongoid

  field :email, type: String
  field :name, type: String
  field :password_digest, type: String
  field :token
  
  validates :email, uniqueness: true
  
  def reset_password
    self.create_token
    UserMailer.reset_password(self).deliver
  end
  
  def create_token
    self.update_attribute token, User.generate_token
  end
  
  def self.generate_token
    Digest::SHA256.hexdigest(Time.now.to_s)
  end
end
