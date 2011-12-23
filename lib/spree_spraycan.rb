require 'spree_core'
require 'spree_spraycan_ability'

module SpreeSpraycan
  class Engine < Rails::Engine
    engine_name = "spree_spraycan"

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Rails.application.config.spraycan.editor_virtual_paths = ["spree/layouts/spree_application", "spree/layouts/admin"]

      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      # Spree::Ability.register_ability(SpreeSpraycanAbility)
    end

    config.to_prepare &method(:activate).to_proc
  end
end
