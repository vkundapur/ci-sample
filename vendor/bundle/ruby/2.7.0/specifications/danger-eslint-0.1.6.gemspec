# -*- encoding: utf-8 -*-
# stub: danger-eslint 0.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "danger-eslint".freeze
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["leonhartX".freeze]
  s.date = "2021-03-24"
  s.description = "A Danger plugin for linting javascript with eslint.".freeze
  s.email = ["leonhartx.k@gmail.com".freeze]
  s.homepage = "https://github.com/leonhartX/danger-eslint".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A Danger plugin for linting javascript with eslint.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<danger-plugin-api>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.49"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_development_dependency(%q<guard>.freeze, ["~> 2.14"])
    s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
    s.add_development_dependency(%q<listen>.freeze, ["= 3.0.7"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  else
    s.add_dependency(%q<danger-plugin-api>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_dependency(%q<guard>.freeze, ["~> 2.14"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
    s.add_dependency(%q<listen>.freeze, ["= 3.0.7"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
