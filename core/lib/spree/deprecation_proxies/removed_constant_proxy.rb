module Spree
  module DeprecationProxies
    class RemovedConstantProxy < ActiveSupport::Deprecation::DeprecationProxy
      def initialize(old_const, deprecator = Spree::Deprecation, message: "#{old_const} has been removed!")
        @old_const = old_const
        @deprecator = deprecator
        @message = message
      end

      def class
        target.class
      end

      private

      def target
        nil
      end

      def warn(callstack, _called, _args)
        @deprecator.warn(@message, callstack)
      end
    end
  end
end
