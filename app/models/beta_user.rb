class BetaUser < ActiveRecord::Base
  unloadable
  belongs_to :user 
  before_create :set_token!
  validates_presence_of :email
  validates_format_of :email, :message => "does not appear to be a valid email address",
                              :if => Proc.new{ |user| !user.email.blank? },
                              :with => /^[A-Za-z0-9][^@]*@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/i
  validates_uniqueness_of :email, :case_sensitive => false, :message => "is already on the beta list"

  def set_token!
    self.token = ActiveSupport::SecureRandom.hex(12)
    self.set_token! unless BetaUser.find_by_token(self.token).nil?
  end
end
