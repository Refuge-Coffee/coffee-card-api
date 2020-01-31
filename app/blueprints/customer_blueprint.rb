class CustomerBlueprint < Blueprinter::Base
  identifier :id

  fields :first_name, :last_name
end