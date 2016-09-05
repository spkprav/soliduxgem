require 'rails/generators/migration'

module Soliduxgem
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations"

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require soliduxgem/properties\n"
      end

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "add_parent_to_spree_properties.rb", "db/migrate/add_parent_to_spree_properties.rb"
      end
    end
  end
end
