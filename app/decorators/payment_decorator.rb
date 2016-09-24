class PaymentDecorator < BaseDecorator
  def current_tition
    "#{value} #{created_at.strftime('%m-%Y')}"
  end
end
