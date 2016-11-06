module LiquidGoogleAnalytics
	TEMPLATE = <<-EOF
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '%s', 'auto');
  ga('send', 'pageview');

</script>
		EOF
end
module GoogleAnalyticsFilterModule

	def google_analytics(input)
		code = ""
		code = format(LiquidGoogleAnalytics::TEMPLATE, input)
		code
	end
end

module Liquid

	class GoogleAnalyticsTag < Liquid::Tag

		def initialize(tag_name, markup, options)
		    super
		    tracking_parsed_code = Liquid::Template.parse(markup.to_s.strip).render
		    unless tracking_parsed_code
		    	tracking_parsed_code = markup.to_s.strip
		    end
		    @tracking_code = tracking_parsed_code
		 end

		def render(context)
			code = ""
			if context['code']
				@tracking_code = context['code']
			elsif context['tracking_code']
				@tracking_code = context['tracking_code']
			end
			if @tracking_code
				code = format(LiquidGoogleAnalytics::TEMPLATE, @tracking_code)
			end
			code
		end
	end
end