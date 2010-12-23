require "big_beta"
require "rails"

module BigBeta
 class Engine < Rails::Engine
    engine_name :big_beta

    rake_tasks do
      load "big_beta/railties/tasks.rake"
    end
  end
end
