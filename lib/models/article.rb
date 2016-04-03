class Article
  include Mongoid::Document

  field :name
  field :content
  field :published_on, :type => Date

  validates :name, presence: true

  embeds_many :comments
  belongs_to :author
end
