class Cohort

  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []

    def career_kickoff #I know I could just add this to my initialize statement but i was afraid I would screw everything up.
      @career_kickoff = @end_date + 4
    end

    def enroll(student)
      if !@students.include?(student)
        @students << student
      end
    end

    def assign(system_check)
      @system_checks << system_check
    end

    def roster
      roster = "#{title}:"
      @students.each do |student|
        roster += "#{student.name}: #{student.email}"
      end
      roster
    end
  end
end
