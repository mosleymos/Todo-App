# frozen_string_literal: true
require 'rack'
module StaticContent
  def self.hello(status = 500, body = '')
    app = proc do |_env|
      [status.to_s, { 'Content-Type' => 'text/html' }, [body.to_s]]
    end
    app
  end

  def self.about(status = 500, body = '')
    app = proc do |_env|
      [status.to_s, { 'Content-Type' => 'text/html' }, [body.to_s]]
    end
    app
  end
end
