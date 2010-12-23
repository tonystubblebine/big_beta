require 'generators/big_beta/big_beta_generator'
namespace :big_beta do 
  namespace :generate do
    desc "generate database migration"
    task :migration do
      BigBetaGenerator.new.create_migration_file
    end
  end
end
