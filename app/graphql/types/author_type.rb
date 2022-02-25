# tipo uma model
class Types::AuthorType < Types::BaseObject
  field :id,          ID,      null: false, description: "Author Identification"
  field :first_name,  String,  null: false, description: "Author First name"
  field :last_name,   String,  null: true, description: "Author Last name"
  field :birth_year,  Int,     null: false, description: "Author's birthday"
  field :alive,       Boolean, null: false, description: "Author is alive?"

  # def esta dentro de models/author.rb
  field :full_name, String, null: false, description: "Return Author full name"

  # customizado
  field :full_name_reverse, String, null: false, description: "Return Author full name reversed"

  def full_name_reverse
    "#{object.first_name} #{object.last_name}".reverse
  end
end
