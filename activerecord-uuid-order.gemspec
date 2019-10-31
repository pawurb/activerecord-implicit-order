lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'activerecord-uuid-order/version'

Gem::Specification.new do |gem|
  gem.name          = "activerecord-uuid-order"
  gem.version       = ActiveRecordUUIDOrder::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["contact@pawelurbanek.com"]
  gem.summary       = %q{ Order for UUID }
  gem.description   = %q{ Order for UUID }
  gem.homepage      = "http://github.com/pawurb/activerecord-uuid-order"
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.add_dependency "activerecord", "< 6.0.0"
end
