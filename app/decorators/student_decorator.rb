class StudentDecorator < BaseDecorator
  include ActionView::Helpers::NumberHelper
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes =  subject_item_notes.for_subject_item(subject_item)
    if notes.count > 0
      number_with_precision( notes.average(:value), precision: 2 )
    else
     '0.00'
    end
  end
end
