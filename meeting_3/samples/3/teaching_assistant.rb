class TeachingAssistant < Student
  include Actions
  include StudentActions
  include TeacherActions

  def initialize(*args)
    super
  end
end
