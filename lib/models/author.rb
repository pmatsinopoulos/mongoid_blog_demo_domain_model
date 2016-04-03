class Author
  include Mongoid::Document
  field :name
  field :_id, default: -> { name }
  has_many :articles
end
