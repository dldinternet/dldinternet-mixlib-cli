unless defined? ::DLDInternet::Mixlib::CLI::ClassMethods

  require "dldinternet/mixlib/cli/version"
  module DLDInternet
    module Mixlib
      module CLI
        module ClassMethods
        end

        # ----------------------------------------------------------------------------------------------------------------
        # InstanceMethods
        # ----------------------------------------------------------------------------------------------------------------

        # --------------------------------------------------------------------------------
        def parseString(v)
          v
        end

        # --------------------------------------------------------------------------------
        def parsePath(v)
          File.expand_path(parseString(v))
        end

        # --------------------------------------------------------------------------------
        def parseList(v,s=',',method='parseString')
          parts = []
          a = v.split(%r/#{s}/)
          a.each{ |t|
            parts << send(method,t)
          }
          parts
        end

        # --------------------------------------------------------------------------------
        def parseOptionString(v,s=',',method='parseString')
          bags = []
          if v.match(%r'#{s}')
            bags << parseList(v,s,method)
          else
            bags << send(method,v)
          end
          bags.flatten
        end

        def self.included(receiver)

          receiver.class_eval do
            require "mixlib/cli"
            include ::Mixlib::CLI
          end

          receiver.extend(::Mixlib::CLI::ClassMethods)
          receiver.extend(ClassMethods)

        end

      end
    end
  end

end