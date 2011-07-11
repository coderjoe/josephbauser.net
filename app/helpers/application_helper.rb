module ApplicationHelper
  def navigation_button( name, url )
    class_name = nil

    class_name = 'selected' if request.fullpath == "/#{url}"
    content_tag(:span, :class => class_name) do
      content_tag(:a, :href => url ) do
        name
      end
    end
  end
end
