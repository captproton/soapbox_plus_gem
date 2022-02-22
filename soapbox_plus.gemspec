require_relative "lib/soapbox_plus/version"

Gem::Specification.new do |spec|
  spec.name        = "soapbox_plus"
  spec.version     = SoapboxPlus::VERSION
  spec.authors     = ["captproton"]
  spec.email       = ["carl@wdwhub.net"]
  spec.homepage    = "https://github.com/captproton/soapbox_plus"
  spec.summary     = "SoapboxPlus provides a platform for its users to persuade its audience"
  spec.description = "SoapboxPlus provides a CMS for its users and more."
    spec.license     = "MIT"
  

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/captproton/soapbox_plus"
  spec.metadata["changelog_uri"] = "https://github.com/captproton/soapbox_plus/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.2.2"
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_bot_rails'
end
