# frozen_string_literal: true

class Atoms::Table::Component < ViewComponent::Base
  def initialize(headers: [], rows: [])
    @headers = headers
    @rows = rows
  end
end
