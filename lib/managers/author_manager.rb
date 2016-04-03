class AuthorManager < ApplicationManager
  # @param author_params {Hash}
  #
  def initialize(author_params)
    @author = Author.new(author_params)
  end

  def create
    message = WaterDrop::Message.new('test', {resource_type: 'author',
                                              action:   'create',
                                              resource: @author}.to_json)
    message.send!
    true
  end
end
