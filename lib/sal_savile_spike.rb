require "sal_savile_spike/version"

module SalSavileSpike
  class Error < StandardError; end

  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      config.assets.paths << File.expand_path("../core", __dir__)
    end
  else
    begin
      require "sass"
      Sass.load_paths << File.expand_path("../core", __dir__)
    rescue LoadError
    end
  end
end
