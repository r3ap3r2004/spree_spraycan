Spraycan::ViewOverridesController.class_eval do
  private
    # need to specify ViewOverride object as
    # it has specific permissions applied to it
    # depending on if the enable_editor is true
    def authenticate_spraycan
      authorize! :admin, Spraycan::ViewOverride
    end
end
