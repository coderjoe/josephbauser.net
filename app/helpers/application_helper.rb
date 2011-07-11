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

  def google_analytics
    script = "
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-526253-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    "

    content_tag(:script, script)
  end
end
