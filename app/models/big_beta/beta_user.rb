module BigBeta
class BetaUser < ActiveRecord::Base
  unloadable
  attr_protected :token
  attr_protected :status
  belongs_to :user 
  before_create :set_token!
  validates_presence_of :email
  validates_format_of :email, :message => "does not appear to be a valid email address",
                              :if => Proc.new{ |user| !user.email.blank? },
                              :with => /^[A-Za-z0-9][^@]*@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/i
  validates_uniqueness_of :email, :case_sensitive => false, :message => "is already on the beta list"

  def duplicate_email_error?
    self.errors and self.errors[:email] and self.errors[:email].include?("is already on the beta list") ? true : false
  end
 
  def invalid_email_format_error?
    self.errors and self.errors[:email] and self.errors[:email].include?("does not appear to be a valid email address") ? true : false
  end

  def set_token!
    self.token = SecureRandom.hex(12)
    self.set_token! unless BetaUser.find_by_token(self.token).nil?
  end
end
end
