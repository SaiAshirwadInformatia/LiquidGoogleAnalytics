# Fetch GEM Info and append to every post
require 'rest-client'
module SaiJekyll
	class GemInfo
		def initialize(site)
			site.config['source_readme'] = fetchReadme(site.config['gitlab_url'])
		end

		def fetchReadme(source_url)
			RestClient.get (source_url + '/raw/master/README.md')
		end
	end
end

Jekyll::Hooks.register :site, :post_read do |jekyll| # jekyll here acts as site global object
	SaiJekyll::GemInfo.new(jekyll)
end