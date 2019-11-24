lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'activerecord-implicit-order/version'

Gem::Specification.new do |gem|
  gem.name          = "activerecord-implicit-order"
  gem.version       = ActiveRecordImplicitOrder::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["contact@pawelurbanek.com"]
  gem.summary       = %q{ Implicit Order for ActiveRecord }
  gem.description   = %q{ Implicit Order for ActiveRecord }
  gem.homepage      = "http://github.com/pawurb/activerecord-implicit-order"
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.add_dependency "activerecord", "< 6.0.0"
end
