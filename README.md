# One-Way Flight Booker

This project is practice with advanced form handling in Rails by creating a flight booking system. It focuses on complex form elements like dropdown menus, radio buttons, and nested submissions—essential skills. This project enhances Rails skills by applying them to a real-world scenario, helping with advanced form handling in Rails applications building on top of MVC backend knowledge and active records. 





<%= form.label :passengers %>
  <%= select_tag(:passengers, options_for_select([1, 2, 3, 4], selected: params[:passengers])) %><br><br>