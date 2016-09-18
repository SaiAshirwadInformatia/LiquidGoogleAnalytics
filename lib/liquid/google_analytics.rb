
module Liquid
	class GoogleAnalytics < Liquid::Tag
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

		def initialize(tag_name, tracking_code, tokens)
		    super
		    @tracking_code = tracking_code.to_s.strip
		 end

		def render(context)
			code = ""
			if @tracking_code
				code = format(TEMPLATE, @tracking_code)
			end
			code
		end
	end
end