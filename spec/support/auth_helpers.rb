# frozen_string_literal: true

require 'spec_helper'

module AuthHelpers
  def login_user(user)
    post user_session_path, params: { user: { email: user.email, password: user.password } }
  end
end

RSpec.configure do |c|
  c.include AuthHelpers
end
