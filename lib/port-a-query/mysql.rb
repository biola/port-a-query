module PortAQuery

  class MySql

    def self.concat(*args)
      args.map! do |arg|
        arg.is_a?(Symbol) ? PortAQuery.quote_identifier(arg) : PortAQuery.quote_string(arg)
      end
      return "CONCAT(#{args.join(',')})"
    end
  
    def self.quote_identifier(ident)
      return "`#{ident}`"
    end
  
  end

end
