# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{big_beta}
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Stubblebine"]
  s.date = %q{2011-08-23}
  s.email = %q{tony+bigbeta@tonystubblebine.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    "app/controllers/big_beta/beta_users_controller.rb",
    "app/controllers/big_beta/invitations_controller.rb",
    "app/controllers/big_beta_controller.rb",
    "app/helpers/big_beta/invitations_helper.rb",
    "app/mailers/big_beta_mailer.rb",
    "app/models/big_beta/beta_user.rb",
    "app/views/big_beta/beta_users/_create_response.html.erb",
    "app/views/big_beta/beta_users/_form.html.erb",
    "app/views/big_beta/beta_users/_form_fields.html.erb",
    "app/views/big_beta/beta_users/_inline_signup.html.erb",
    "app/views/big_beta/beta_users/_show.html.erb",
    "app/views/big_beta/beta_users/create.html.erb",
    "app/views/big_beta/beta_users/create.js.erb",
    "app/views/big_beta/beta_users/edit.html.erb",
    "app/views/big_beta/beta_users/index.html.erb",
    "app/views/big_beta/beta_users/new.html.erb",
    "app/views/big_beta/beta_users/show.html.erb",
    "app/views/big_beta/invitations/create.html.erb",
    "app/views/big_beta/invitations/index.html.erb",
    "app/views/big_beta/invitations/new.html.erb",
    "app/views/big_beta_mailer/invitation.text.erb",
    "app/views/layouts/admin.html.erb",
    "config/application.rb",
    "config/boot.rb",
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
    "lib/generators/big_beta/templates/big_beta.rb",
    "lib/generators/big_beta/templates/create_beta_users.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails engine for handling beta signups and invites.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

