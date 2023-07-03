# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-perry"
  spec.version       = "0.1.16"
  spec.authors       = ["Richard Perry"]
  spec.email         = ["gems@perrymail.me.uk"]

  spec.summary       = "Custom Jekyll theme for my personal homepage"
  spec.homepage      = "https://richard.perry-online.me.uk/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.platform      = Gem::Platform::RUBY
  
  spec.add_runtime_dependency "jekyll", "~> 3.9.3"
  spec.add_runtime_dependency "jekyll-sass-converter", "~> 1.5.2"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler", "~> 1.13"
end
