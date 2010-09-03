module PortAQuery

  class Default
  
    def self.concat(*args)
      args.map! do |arg|
        arg.is_a?(Symbol) ? PortAQuery.quote_identifier(arg) : PortAQuery.quote_string(arg)
      end
      return args.join('||')
    end
  
    def self.quote_string(str)
      str.gsub!("'", "\\\\'")
      return "'#{str}'"
    end
  
    def self.quote_identifier(ident)
      return '"'+ident.to_s+'"'
    end
  
  end

end
