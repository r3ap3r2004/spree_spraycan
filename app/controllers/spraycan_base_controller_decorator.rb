Spraycan::BaseController.class_eval do
  private
    def authenticate_spraycan
      authorize! :admin, Object
    end

end
