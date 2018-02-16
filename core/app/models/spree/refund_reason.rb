module Spree
  class RefundReason < Spree::Base
    include Spree::NamedType

    RETURN_PROCESSING_REASON = Spree::DeprecationProxies::RemovedConstantProxy.new('RETURN_PROCESSING_REASON')

    has_many :refunds

    validates_uniqueness_of :is_return_processing_reason,
                            conditions: -> { where(is_return_processing_reason: true) }
    validates_presence_of :active,
                          if: :is_return_processing_reason?

    def self.return_processing_reason
      find_by_is_return_processing_reason!(true)
    end
  end
end
