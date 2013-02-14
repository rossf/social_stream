class Post < ActiveRecord::Base
  include SocialStream::Models::Object

  MAXIMUM_LENGTH = 140

  alias_attribute :text, :description
  validates :text, presence: true

  def title
    description.truncate(30, :separator =>' ')
  end
end
