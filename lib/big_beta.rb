module BigBeta
  require 'big_beta/engine' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
  
  mattr_accessor :invite_to_url
  @@invite_to_url = nil
 
  def self.setup
    yield self
  end
 
end
