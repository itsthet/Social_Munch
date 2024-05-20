class Recipe < ApplicationRecord
  has_many :favourites

  has_many :reviews
  validates :name, presence: true

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
  attribute :dietary_requirements, :string

  def set_method
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "Give me a simple recipe for #{name} with the ingredients #{ingredients}.Give me only the text of the recipe, without any of your own answer like 'Here is a simple recipe'."}]
    })
    new_method = chaptgpt_response["choices"][0]["message"]["content"]

    update(method: new_method)
    return new_method
  end

  def method
    if super.blank?
      set_method
    else
      super
    end
  end

  # [...]
end
