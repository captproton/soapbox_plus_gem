module SoapboxPlus
  class Engine < ::Rails::Engine
    isolate_namespace SoapboxPlus

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot #newly added code
      g.factory_bot dir: 'spec/factories' #newly added code      
    end

    # new code
    initializer "soapbox_plus.factories", after: "factory_bot.set_factory_paths" do
      FactoryBot.definition_file_paths << File.expand_path('../../../spec/factories', __FILE__) if defined?(FactoryBot)
    end    
  end
end