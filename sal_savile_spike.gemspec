require_relative 'lib/sal_savile_spike/version'

Gem::Specification.new do |spec|
  spec.name          = "sal_savile_spike"
  spec.version       = SalSavileSpike::VERSION
  spec.authors       = ["Sal Espinosa"]
  spec.email         = ["sespinos@gmail.com"]

  spec.summary       = %q{Spike working towards a SavileRow gem.}
  spec.description   = %q{Spike to see how much styling we can put in here.}
  spec.homepage      = "https://github.com/s-espinosa/sal_savile_spike"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/s-espinosa/sal_savile_spike"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
