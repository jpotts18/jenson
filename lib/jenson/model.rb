class ModelFactory
  def self.create_model(generator, name, fields)
    if generator == 'model'
      return Model.new(name, fields)
    end
  end
end

class Model

  attr_accessor :name
  attr_accessor :fields

  def initialize(name, fields)
    @name = name
    @fields = fields
  end
end