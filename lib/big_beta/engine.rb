require "big_beta"
require "rails"

module BigBeta
 class Engine < Rails::Engine
    rake_tasks do
      load "big_beta/railties/tasks.rake"
    end
  end
end
