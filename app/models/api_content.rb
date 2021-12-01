
class ApiContent < ApplicationRecord
  validates :title, presence: true
  validate :content_is_json

  private

  def content_is_json
    JSON.parse(content)
    true
  rescue StandardError => e
    errors.add(:content, e.message)
  end
end
