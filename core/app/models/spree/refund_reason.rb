module Spree
  class RefundReason < Spree::Base
    include Spree::NamedType

    RETURN_PROCESSING_REASON = Spree::DeprecationProxies::RemovedConstantProxy.new('RETURN_PROCESSING_REASON')

    has_many :refunds

    def self.return_processing_reason
      find_by_is_return_processing_reason!(true)
    end
  end
end
