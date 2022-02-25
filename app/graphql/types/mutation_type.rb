# criar, alterar ou apagar algo (C_UD)
module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
                          # model
    # field :create_author, Types::AuthorType, null: false, description: "Create an author" do
    #   argument :first_name,  String,  required: false
    #   argument :last_name,   String,  required: false
    #   argument :birth_year,  Int,     required: false
    #   argument :alive,       Boolean, required: false
    # end
    # def create_author(first_name:, last_name:, birth_year:, alive:)
    #   Author.create(first_name: first_name, last_name: last_name,
    #                 birth_year: birth_year, alive: alive)
    # end

    # função autor        tipo de retorno    arquivo com a função create_author
    
    #field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, null: true, description: "Create an author"
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, null: true, description: "Create an author"
  end
end
