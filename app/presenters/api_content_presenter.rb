require 'json'

class ApiContentPresenter
  def initialize(api_content)
    @api_content = api_content
  end

  def content_as_json
    JSON.pretty_generate(
      JSON.parse(
        @api_content.content
      )
    )
  end
end