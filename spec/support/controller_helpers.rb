# frozen_string_literal: true

module ControllerHelpers
  extend ActiveSupport::Concern

  included do
    include Devise::Test::ControllerHelpers
  end
end
