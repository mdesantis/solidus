class RemoveMutableFromRefundReasonsReturnReasonsAndReimbursementTypes < ActiveRecord::Migration[5.1]
  def change
    [:spree_refund_reasons, :spree_return_reasons, :spree_reimbursement_types].each do |table|
      remove_column table, :mutable, :boolean, default: true
    end
  end
end
