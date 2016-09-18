# Test Google Analytics Tag
require 'minitest/autorun'
require 'liquid-google-analytics'

class GoogleAnalyticsTest <  Minitest::Unit::TestCase
	def test_google_analytics
		template_gen = Liquid::Template.parse('{% google_analytics U-412 %}')
		expected = <<-EOF
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'U-412', 'auto');
  ga('send', 'pageview');

</script>
		EOF
		
		assert_equal expected, template_gen.render
	end
end