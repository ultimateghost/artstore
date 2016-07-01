module ApplicationHelper
  def notice_message
    alert_types = { notice: :success, alert: :danger }

<<<<<<< HEAD
    close_button_options = { class: "close", "data-dismiss" => "alert", "aria-hidden" => true }
    close_button = content_tag(:button, "×", close_button_options)
=======
    close_button_options = { class: "close", "data-dismiss" => "alert", "aira-hidden" => true }
    close_button = content_tag(:button, "x", close_button_options)
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de

    alerts = flash.map do |type, message|
      alert_content = close_button + message

      alert_type = alert_types[type.to_sym] || type
      alert_class = "alert alert-#{alert_type} alert-dismissable"

      content_tag(:div, alert_content, class: alert_class)
    end

    alerts.join("\n").html_safe
  end
<<<<<<< HEAD

=======
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  def render_cart_items_count(cart)
    cart.cart_items.count
  end
end
