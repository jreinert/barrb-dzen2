# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'barrb/dzen2/version'

Gem::Specification.new do |spec|
  spec.name          = 'barrb-dzen2'
  spec.version       = Barrb::Dzen2::VERSION
  spec.authors       = ['Joakim Reinert']
  spec.email         = ['mail+barrb@jreinert.com']

  spec.summary       = 'dzen2 extensions for barrb'
  spec.homepage      = 'https://github.com/jreinert/barrb-dzen2'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    fail 'RubyGems >=2.0 is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'barrb', '~> 0.1'
end
