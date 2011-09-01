module PortAQuery

  # Symbols should be used for field names, everything else will be quoted as a string

  def self.method_missing(name, *args)

    adapter_class = self.adapter_class

    if adapter_class.respond_to?(name)
      adapter_class.send(name, *args)
    else
      Default.send(name, *args)
    end

  end

  protected
  
  def self.adapter
    ActiveRecord::Base.configurations[Rails.env]['adapter']
  end
  
  def self.adapter_class
  
    case self.adapter.to_sym
      when :sqlite3
        return SqLite3
      when :mysql
        return MySql
      when :mysql2
        return MySql
    end
  
  end

end
