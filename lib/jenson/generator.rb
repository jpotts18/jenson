require 'erb'

class GeneratorFactory
  def self.create_generator(generator)
    if generator == 'model' 
      return ModelGenerator.new
    end
  end
end

class Strategy
  def render()
    raise 'Abstract method called'
  end
end

class PatternRenderer < Strategy
  def render()
    @output = File.read('../teml')  
  end
end

class ModelRenderer < Strategy

  def render()
    @model = model
    f = File.expand_path(File.join(File.dirname(__FILE__), '../templates/model.rb.erb'))
    @template = File.read(f)
    model_file = File.new("gen/#{@model.name.downcase}.rb", 'w+')
    str = ERB.new(@template).result
    puts str
    model_file.write(ERB.new(@template).result)
  end
end