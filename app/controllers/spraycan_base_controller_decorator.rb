Spraycan::BaseController.class_eval do
  private
    def authenticate_spraycan
      authorize! :admin, Object
    end

    private
      def current_ability
        @current_ability ||= Spree::Ability.new(current_user)
      end
end
