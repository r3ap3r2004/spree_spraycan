require 'spree_core'

module SpreeSpraycan
  class Engine < Rails::Engine
    engine_name = "spree_spraycan"

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Spraycan::Config.editor_virtual_paths = ["shared/_head", "layouts/spree_application", "layouts/admin"]

      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Ability.register_ability(SpreeSpraycanAbility)
    end

    config.to_prepare &method(:activate).to_proc
  end
end
