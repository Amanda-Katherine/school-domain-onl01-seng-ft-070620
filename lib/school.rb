class School
attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end #initialize

  def add_student(name, grade)

      if @roster[grade] == nil
        @roster[grade] = [name]
      else
        @roster[grade] << name
      end #if


      if @roster[grade] == nil ?   @roster[grade] = [name] : @roster[grade] << name
      # else
      #
      # end #if
  end #add_student

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, name| @roster[grade] = name.sort}
  end
end #class
