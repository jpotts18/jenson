# Readme

## Requirements

* Installed via ruby gems
* Used from the CLI
* Create models from rails-esque generations `jenson model User first_name:string last_name:string`
* Create controller with CRUD methods `jenson controller UserController`


# <% @model.fields.each do |f| %>
# 	attr_accessor :<%= puts f %>
# <% end %> 

# end