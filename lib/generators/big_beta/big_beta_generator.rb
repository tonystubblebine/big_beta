require 'rails/generators'
require 'rails/generators/migration'
require 'big_library/generators'

class BigBetaGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  include BigLibrary::Generators

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  # Implement the required interface for Rails::Generators::Migration.
  # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end
  
  def create_migration_files
    %w{create_beta_users}.each do |migration|
      create_migration_file(migration)
    end
  end

  def copy_initializer
    template 'big_beta.rb', 'config/initializers/big_beta.rb'
  end

end
