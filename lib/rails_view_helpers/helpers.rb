module RailsViewHelpers
  require 'phone'
  require 'active_link_to'

  def phone_link_to(phone, html_options = {})
    phone = Phoner::Phone.parse phone
    phone_formatted =  (content_tag :i, phone.format("+%c (%a) ")).html_safe + phone.format("%f %l")
    html_options = {href: "tel:#{phone}"}.merge html_options
    content_tag(:a, phone_formatted, html_options)
  end

  def ext_link_to(name = nil, options = nil, html_options = nil, &block)
    html_options, options, name = options, name, block if block_given?
    options ||= {}
    html_options = convert_options_to_data_attributes(options, html_options)
    if options.is_a? String
      url = /^http/i.match(options) ? options : "http://#{options}"
    else
      url = /^http/i.match(name) ? name : "http://#{name}"
    end
    html_options['href'] ||= url
    html_options['target'] ||= '_blank'

    content_tag(:a, name || url, html_options, &block)

  end
end

ActionView::Base.send :include, RailsViewHelpers