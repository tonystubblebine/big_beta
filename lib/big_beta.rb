module BigBeta
  require 'big_beta/engine' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
  
  mattr_accessor :invite_to_url
  @@invite_to_url = nil
  mattr_accessor :from_email_address
  @@from_email_address = nil #"do-not-reply@example.com"
 
  def self.setup
    yield self
  end
 
end
