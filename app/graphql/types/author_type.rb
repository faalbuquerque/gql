# tipo uma model
class Types::AuthorType < Types::BaseObject
  field :id,          ID,      null: false, description: "Author Identification"
  field :first_name,  String,  null: false, description: "Author First name"
  field :last_name,   String,  null: true, description: "Author Last name"
  field :birth_year,  Int,     null: false, description: "Author's birthday"
  field :alive,       Boolean, null: false, description: "Author is alive?"
end
