# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{big_beta}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Stubblebine"]
  s.date = %q{2011-01-08}
  s.email = %q{tony+bigbeta@tonystubblebine.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "app/controllers/big_beta/beta_users_controller.rb",
    "app/controllers/big_beta_controller.rb",
    "app/models/big_beta/beta_user.rb",
    "app/views/big_beta/beta_users/_form.html.erb",
    "app/views/big_beta/beta_users/_form_fields.html.erb",
    "app/views/big_beta/beta_users/_inline_signup.html.erb",
    "app/views/big_beta/beta_users/_show.html.erb",
    "app/views/big_beta/beta_users/create.js.erb",
    "app/views/big_beta/beta_users/edit.html.erb",
    "app/views/big_beta/beta_users/index.html.erb",
    "app/views/big_beta/beta_users/new.html.erb",
    "app/views/big_beta/beta_users/show.html.erb",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/locales/en.yml",
    "config/routes.rb",
    "lib/big_beta.rb",
    "lib/big_beta/engine.rb",
    "lib/big_beta/railties/tasks.rake",
    "lib/generators/big_beta/big_beta_generator.rb",
    "lib/generators/big_beta/templates/migration.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rails engine for handling beta signups and invites.}
  s.test_files = [
    "test/rails_root/app/controllers/application_controller.rb",
    "test/rails_root/app/helpers/application_helper.rb",
    "test/rails_root/app/models/user.rb",
    "test/rails_root/config/application.rb",
    "test/rails_root/config/boot.rb",
    "test/rails_root/config/environment.rb",
    "test/rails_root/config/environments/development.rb",
    "test/rails_root/config/environments/production.rb",
    "test/rails_root/config/environments/test.rb",
    "test/rails_root/config/initializers/backtrace_silencers.rb",
    "test/rails_root/config/initializers/big_auth.rb",
    "test/rails_root/config/initializers/inflections.rb",
    "test/rails_root/config/initializers/mime_types.rb",
    "test/rails_root/config/initializers/secret_token.rb",
    "test/rails_root/config/initializers/session_store.rb",
    "test/rails_root/config/routes.rb",
    "test/rails_root/db/migrate/20101125054346_create_content_managers.rb",
    "test/rails_root/db/migrate/20101125054348_create_pages.rb",
    "test/rails_root/db/migrate/20101125054350_create_navigations.rb",
    "test/rails_root/db/migrate/20101125054352_create_components.rb",
    "test/rails_root/db/migrate/20101125054354_create_cms_files.rb",
    "test/rails_root/db/migrate/20101125195736_add_versioning_to_pages.rb",
    "test/rails_root/db/migrate/20101125195738_add_versioning_to_components.rb",
    "test/rails_root/db/migrate/20101128230245_create_big_auth_tables.rb",
    "test/rails_root/db/migrate/20110107203731_create_beta_users.rb",
    "test/rails_root/db/schema.rb",
    "test/rails_root/db/seeds.rb",
    "test/rails_root/test/functional/beta_users_controller_test.rb",
    "test/rails_root/test/test_helper.rb",
    "test/rails_root/test/unit/beta_user_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

