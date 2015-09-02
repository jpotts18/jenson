module DataType
  STRING = 1
  DATE = 2
end

class Klass
  attr_accessor :attributes
  attr_accessor :method
end

class Attribute
  attr_accessor :name
  attr_accessor :data_type
end

class Method
  attr_accessor :name
  attr_accessor :params
end


# classgen User first_name:string last_name:string email:string, password:string, created_at:date