#!/usr/bin/env ruby

require 'fileutils'
require 'jenson/generator.rb'
require 'jenson/model.rb'

class Jenson

  attr_accessor :model
  attr_accessor :generator
  attr_accessor :gen_dir

  def initialize(generator, class_name, fields, gen_dir = 'gen')
    FileUtils::mkdir_p gen_dir unless Dir.exists? gen_dir
    fields = fields.map { |f| {name: f.split(':')[0], type: f.split(':')[-1]}  }
    @model = ModelFactory.create_model(generator, class_name, fields)
    @generator = GeneratorFactory.create_generator(generator) 
  end

  def generate()
    puts "Model -> #{@model.class} #{@model.inspect}" 
    puts "Generator -> #{@generator.class} #{@generator.inspect}"
    @generator.execute(@model)
  end

end

j = Jenson.new('model', 'User', ['first:string', 'last:string'])
j.generate