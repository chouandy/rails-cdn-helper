module RailsCdnHelper
  class Engine < ::Rails::Engine

    config.before_configuration do |app|
      app.configure do
        cdn_uri = config_for(:cdn).deep_symbolize_keys[:uri] rescue nil
        config.cdn_uri = cdn_uri || 'https://cdnjs.cloudflare.com/ajax/libs/'
      end
    end
  end
end
