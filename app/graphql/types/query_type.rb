module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    #Defino o que eu quero chamar
    #                 tipo/model
    field :author, Types::AuthorType, null: true, description: "Search an author" do
      argument :first_name, String, required: true
    end

    field :authors, [Types::AuthorType], null: true, description: "Search all authors"

    #chamo
    def author(first_name:)
      Author.where(first_name: first_name)&.first
    end

    def authors
      Author.all
    end
  end
end
