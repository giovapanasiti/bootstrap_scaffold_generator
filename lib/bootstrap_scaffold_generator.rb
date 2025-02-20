require "bootstrap_scaffold_generator/version"
require "rails/generators"
require "rails/generators/erb/scaffold/scaffold_generator"

module BootstrapScaffoldGenerator
  class ScaffoldGenerator < Rails::Generators::Erb::ScaffoldGenerator
    source_root File.expand_path("templates", __dir__)
  end
end