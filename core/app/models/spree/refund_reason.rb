module Spree
  class RefundReason < Spree::Base
    include Spree::NamedType

    has_many :refunds

    def self.return_processing_reason
      find_by_is_return_processing_reason!(true)
    end
  end
end
