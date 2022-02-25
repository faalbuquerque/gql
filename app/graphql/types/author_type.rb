class Types::AuthorType < Types::BaseObject
  # tipo uma model
  field :id,         ID,      null: false, description: "id, UUID"
  field :first_name, String,  null: false, description: "The first name as String"
  field :last_name,  String,  null: false, description: "The Last name as String"
  field :birth_year, Int,     null: false, description: "The year of birth as Integer"
  field :alive,      Boolean, null: false, description: "If is alive as Boolean"

  # def esta dentro de models/author.rb
  field :full_name,         String, null: false, description: "Return Author full name"

  # customizado
  field :full_name_reverse, String, null: false, description: "Return Author full name reversed"

  def full_name_reverse
    "#{object.first_name} #{object.last_name}".reverse
  end
end

class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "All the atributes needed to create/update an author"

  # argument :id, ID, required: false
  argument :first_name, String,  required: false
  argument :last_name,  String,  required: false
  argument :birth_year, Int,     required: false
  argument :alive,   Boolean, required: false
end
