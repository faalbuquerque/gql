# tipo uma model
class Types::AuthorType < Types::BaseObject
  field :id,          ID,      null: true, description: "Author Identification"
  field :first_name,  String,  null: true, description: "Author First name"
  field :last_name,   String,  null: true, description: "Author Last name"
  field :birth_year,  Int,     null: true, description: "Author's birthday"
  field :alive,       Boolean, null: true, description: "Author is alive?"

  # def esta dentro de models/author.rb
  field :full_name,         String, null: false, description: "Return Author full name"

  # customizado
  field :full_name_reverse, String, null: false, description: "Return Author full name reversed"

  def full_name_reverse
    "#{object.first_name} #{object.last_name}".reverse
  end
end

module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name "AuthorInputType"
    description "All attributes needed to create/update an author"

    # argument :id,          ID,      required: false
    argument :first_name,  String,  required: false
    argument :last_name,   String,  required: false
    argument :birth_year,  Int,     required: false
    argument :alive,       Boolean, required: false
  end
end
