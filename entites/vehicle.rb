class Vehicle
    attr_accessor :reg_no, :type
  
    def initialize(reg_no, type)
        puts reg_no
        @reg_no = reg_no
        @type = type
    end
end
