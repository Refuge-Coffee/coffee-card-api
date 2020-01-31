class CardBlueprint < Blueprinter::Base
  identifier :id

  fields :full_number, :balance_cents

  view :normal do
    fields :full_number, :balance_cents
    association :customer, blueprint: CustomerBlueprint
  end
end