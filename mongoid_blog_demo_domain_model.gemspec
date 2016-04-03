# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid_blog_demo_domain_model/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid_blog_demo_domain_model"
  spec.version       = MongoidBlogDemoDomainModel::VERSION
  spec.authors       = ["Panayotis Matsinopoulos"]
  spec.email         = ["Panayotis Matsinopoulos <panayotis@matsinopoulos.gr>"]

  spec.summary       = %q{Domain Model for the MongoID Blog Demo App}
  spec.description   = %q{The Domain Model for the MongoID Blog Demo App. It is used to demonstrate how a domain model can be factored out to a reusable component.}
  spec.homepage      = "https://github.com/pmatsinopoulos/mongoid_blog_demo_domain_model"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'mongoid', '5.1.2'
  spec.add_dependency 'mongoid-sadstory', '0.0.2'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
