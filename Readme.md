# Jenson

Purpose to create a code generation tool based on concepts from rails

## Requirements

* Installed via ruby gems - `gem install jenson`
* Used from the CLI
* Create models from rails-esque generations `jenson model User first_name:string last_name:string`
* Create controller with CRUD methods `jenson controller UserController`

## Usage

* ```jenson \[generator] \[class] \[arguments]```
* Example : ```jenson model User first:string last:string```
* Example : ```jenson model User first:string last:string -l android```
* Example : ```jenson model User first:string last:string --language ruby --output-folder
* Example : ```jenson controllers User index show update destroy edit```
* Example : ```jenson views index show```
* Example : ```jenson pattern singleton Application -l java```
* Example : ```jenson pattern factory -l ruby```