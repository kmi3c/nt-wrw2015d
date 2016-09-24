class TeacherDecorator < BaseDecorator
  def full_name_with_title
    "#{full_name} [#{academic_title}]"
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
