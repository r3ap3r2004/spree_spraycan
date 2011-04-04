Deface::BaseController.class_eval do
  private
    def authenticate_deface
      authorize! :admin, Object
    end

end
