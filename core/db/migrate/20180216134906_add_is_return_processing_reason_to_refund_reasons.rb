class AddIsReturnProcessingReasonToRefundReasons < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_refund_reasons, :is_return_processing_reason, :boolean, default: false
  end
end
