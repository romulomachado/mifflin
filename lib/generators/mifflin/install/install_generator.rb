require 'rails/generators'

module Mifflin
  module Generators
    class Mifflin::InstallGenerator < Rails::Generators::Base
      desc "Installs Mifflin and generates the necessary files"

      source_root File.expand_path("../templates", __FILE__)

      def setup_stylesheets
        copy_application_sass
        copy_requirements_sass
        copy_settings_styles
        copy_tools_styles
        copy_generic_styles
        copy_base_styles
        copy_objects_styles
        copy_components_styles
        copy_trumps_styles
      end

      def setup_js
        copy_application_coffee
        copy_requirements_coffee
      end

      private
        def copy_application_sass
          remove_file 'app/assets/stylesheets/application.css'
          template 'assets/stylesheets/application.css.sass', 'app/assets/stylesheets/application.css.sass'
        end

        def copy_requirements_sass
          template 'assets/stylesheets/requirements.sass', 'app/assets/stylesheets/_requirements.sass'
        end

        def copy_settings_styles
          empty_directory 'app/assets/stylesheets/settings'
          template 'assets/stylesheets/settings/_settings.global.sass', 'app/assets/stylesheets/settings/_settings.global.sass'
          template 'assets/stylesheets/settings/_settings.fonts.sass', 'app/assets/stylesheets/settings/_settings.fonts.sass'
          template 'assets/stylesheets/settings/_settings.colors.sass', 'app/assets/stylesheets/settings/_settings.colors.sass'
          template 'assets/stylesheets/settings/_settings.grid.sass', 'app/assets/stylesheets/settings/_settings.grid.sass'
        end

        def copy_tools_styles
          empty_directory 'app/assets/stylesheets/tools'
          template 'assets/stylesheets/tools/_tools.mixins.sass', 'app/assets/stylesheets/tools/_tools.mixins.sass'
          template 'assets/stylesheets/tools/_tools.mediaqueries.sass', 'app/assets/stylesheets/tools/_tools.mediaqueries.sass'
          template 'assets/stylesheets/tools/_tools.intrinsic-ratio.sass', 'app/assets/stylesheets/tools/_tools.intrinsic-ratio.sass'
        end

        def copy_generic_styles
          empty_directory 'app/assets/stylesheets/generic'
          template 'assets/stylesheets/generic/_generic.example.sass', 'app/assets/stylesheets/generic/_generic.example.sass'
        end

        def copy_base_styles
          empty_directory 'app/assets/stylesheets/base'
          template 'assets/stylesheets/base/_base.page.sass', 'app/assets/stylesheets/base/_base.page.sass'
          template 'assets/stylesheets/base/_base.type.sass', 'app/assets/stylesheets/base/_base.type.sass'
        end

        def copy_objects_styles
          empty_directory 'app/assets/stylesheets/objects'
          template 'assets/stylesheets/objects/_objects.containers.sass', 'app/assets/stylesheets/objects/_objects.containers.sass'
        end

        def copy_components_styles
          empty_directory 'app/assets/stylesheets/components'
          template 'assets/stylesheets/components/_components.buttons.sass', 'app/assets/stylesheets/components/_components.buttons.sass'
        end

        def copy_trumps_styles
          empty_directory 'app/assets/stylesheets/trumps'
          template 'assets/stylesheets/trumps/_trumps.example.sass', 'app/assets/stylesheets/trumps/_trumps.example.sass'
        end

        def copy_application_coffee
          remove_file 'app/assets/javascripts/application.js'
          template 'assets/javascripts/application.js.coffee', 'app/assets/javascripts/application.js.coffee'
        end

        def copy_requirements_coffee
          template 'assets/javascripts/requirements.js.coffee', 'app/assets/javascripts/requirements.js.coffee'
        end
    end
  end
end
