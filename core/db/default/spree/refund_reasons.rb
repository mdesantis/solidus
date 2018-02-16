Spree::RefundReason
  .create_with(name: 'Return processing')
  .find_or_create_by!(is_return_processing_reason: true)
