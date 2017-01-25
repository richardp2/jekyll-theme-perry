# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-perry"
  spec.version       = "0.1.0"
  spec.authors       = ["Richard Perry"]
  spec.email         = ["richard@perrymail.me.uk"]

  spec.summary       = "Custom Jekyll theme for my personal homepage"
  spec.homepage      = "http://richard.perry-online.me.uk/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.platform      = Gem::Platform::RUBY

  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.1"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.4"
  spec.add_runtime_dependency "jekyll-mentions", "~> 1.2"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.11"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jemoji", "~> 0.7"
  spec.add_runtime_dependency "flickraw", "~> 0.9.9"

  spec.add_development_dependency "bundler", "~> 1.12"
end
