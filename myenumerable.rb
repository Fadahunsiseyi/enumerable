module MyEnumerable
    def all?(&block)
      each do |element|
        return false if block.call(element) == false
      end
      true
    end
  
    def any?(&block)
      each do |element|
        return true if block.call(element) == true
      end
      false
    end
  
    def filter(&block)
      arr_list = []
      each do |element|
        arr_list << element if block.call(element) == true
      end
      arr_list
    end
  end