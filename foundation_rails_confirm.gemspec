# -*- encoding: utf-8 -*-
require File.expand_path('../lib/foundation_rails_confirm/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Samuel Sieg"]
  gem.email         = ["samuel.sieg@gmail.com"]
  gem.description   = %q{Confirm dialogs using ZURB Foundation}
  gem.summary       = %q{Applies a custom confirm dialog for elements with a data-confirm attribute.}
  gem.homepage      = "https://github.com/calmyournerves/foundation_rails_confirm"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "foundation_rails_confirm"
  gem.require_paths = ["lib", "vendor"]
  gem.version       = FoundationRailsConfirm::VERSION
end
