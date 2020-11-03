# code here!
class School

    attr_accessor :roster, :name
    

    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(student, level)
        roster[level] ||= []
        roster[level] << student
    end

    def grade(level)
        roster[level]
        # roster.detect do |x,y|
        #     if x == level
        #         return y
        #     end
        # end
    end

    def sort
        new_list={}
        roster.each do |x,y|
            new_list[x] = y.sort
        end
        new_list
    end

    # def roster(name, grade)
    #     @name= roster[:@name]
    #     @grade= roster[:@grade]
    # end

    # def add_student(name,grade)
    #     @add_student
    # end
end