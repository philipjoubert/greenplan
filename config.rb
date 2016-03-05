###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page '/training/module/*.txt', layout: "training-module"

page '/design-builder/resource*', layout: "resources"

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

activate :blog do |blog|
  blog.name = "case-studies"
  blog.prefix = "case-studies"
  blog.permalink = "/{title}.html"

  blog.sources = "{title}.html"
  blog.layout = "case_study"
  blog.paginate = false
end

activate :blog do |blog|
  blog.name = "consulting"
  blog.prefix = "consulting"
  blog.permalink = "/{title}.html"

  blog.sources = "{title}.html"
  blog.layout = "consulting-service"
  blog.paginate = false
end

activate :blog do |blog|
  blog.name = "training-modules"
  blog.prefix = "training/"
  blog.permalink = "/{title}.html"

  blog.sources = "{title}.html"
  blog.layout = "training-module"
  blog.paginate = false
end

# General configuration

set :absolute_prefix, "http://localhost:4567"

set :app_name, 'GreenPlan'
set :app_meta_description, 'Consulting engineers for XA-10400, building energy simulation'

set :google_analytics_key, "XXX"

activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

ignore "/service.html"

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  set :absolute_prefix, "https://www.greenplan.co.za"
  set :google_analytics_key, "XXX"
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
