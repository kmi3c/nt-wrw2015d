class StudentDecorator < BaseDecorator
  include ActionView::Helpers::NumberHelper
  def full_name
    "#{first_name} #{last_name}"
  end
  def format_birthday
    birthday.strftime('%Y-%m_%d') unless birthday.nil?
  end
  def current_tition
    payments.last.decorate.current_tition
  end
  def avg_notes(subject_item)
    notes =  subject_item_notes.for_subject_item(subject_item)
    if notes.count > 0
      number_with_precision( notes.average(:value), precision: 2 ).to_s
    else
     '0.00'
    end
  end
end
