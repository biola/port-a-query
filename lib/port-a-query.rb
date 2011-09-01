require 'port-a-query/adapters/default'
require 'port-a-query/adapters/sqlite3'
require 'port-a-query/adapters/mysql'

module PortAQuery
  # Symbols should be used for field names, everything else will be quoted as a string

  @adapter = nil

  def self.method_missing(name, *args)

    if adapter.respond_to?(name)
      adapter.send(name, *args)
    else
      Default.send(name, *args)
    end

  end

  protected
  
  def self.adapter
    return @adapter unless @adapter.nil?
  
    adapter_name = ActiveRecord::Base.configurations[Rails.env]['adapter']
  
    @adapter = case adapter_name.to_s.to_sym
    when :sqlite3
      SqLite3
    when :mysql
      MySql
    when :mysql2
      MySql
    end
  end

end
