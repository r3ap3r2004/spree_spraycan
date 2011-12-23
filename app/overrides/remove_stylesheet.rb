Deface::Override.new(:name => 'remove_stylesheet',
                     :virtual_path => 'spree/shared/_head',
                     :replace => %q{code[erb-loud]:contains("stylesheet_link_tag 'store/all")},
                     :text => %q{<link rel="stylesheet" type="text/css" 
href="http://fonts.googleapis.com/css?family=<%= Spraycan::Config.preferred_title_font %>|<%= Spraycan::Config.preferred_body_font %>">
})
