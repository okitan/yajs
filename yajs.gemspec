# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "yajs"
  spec.version       = File.read(File.expand_path("../VERSION", __FILE__)).chomp
  spec.authors       = ["okitan"]
  spec.email         = ["okitakunio@gmail.com"]

  spec.summary       = "Yet Another JSON Schema"
  spec.description   = "Yet Another JSON Schema Library"
  spec.homepage      = "https://github.com/okitan/yajs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
