Deface::Override.new(:name => 'replace_logo',
                     :virtual_path => 'spree/layouts/spree_application',
                     :replace => 'figure#logo',
                     :text => %q{<%= link_to root_path do %>
                       <figure data-hook="" class="columns alpha six" id="logo"></figure>
                    <% end %>})

