module PortAQuery

  class SqLite3
  
    def self.quote_string(str)
      str.gsub!("'", "''")
      return "'#{str}'"
    end
  
  end

end
