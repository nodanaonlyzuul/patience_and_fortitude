# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'patience_and_fortitude/version'

Gem::Specification.new do |spec|
  spec.name          = "patience_and_fortitude"
  spec.version       = PatienceAndFortitude::VERSION
  spec.authors       = ["nodanaonlyzuul"]
  spec.email         = ["beholdthepanda@gmail.com"]

  spec.summary       = %q{Menu driven, command line access to your NYPL account}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/nodanaonlyzuul/patience_and_fortitude"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'highline', '~> 1.7'
  spec.add_dependency 'whirly', '~> 0.2.6'
  spec.add_dependency 'nypl-site-scraper', '0.1.2'
  spec.add_dependency 'rainbow', '~> 3.0'
  spec.add_dependency 'paint', '~> 2.0'
  spec.add_dependency 'formatador', '~> 0.2.5'

  spec.add_development_dependency "pry", '~> 0.11.3'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
