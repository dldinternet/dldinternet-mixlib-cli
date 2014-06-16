require "dldinternet/mixlib/cli/version"
require "mixlib/cli"

module DLDInternet
  module Mixlib
    module CLI

      include ::Mixlib::CLI

      def self.included(receiver)
        receiver.extend(::Mixlib::CLI::ClassMethods)
      end

    end
  end
end
