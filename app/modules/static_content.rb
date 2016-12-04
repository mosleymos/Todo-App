# TODO: to many self
require 'rack'
module StaticContent
  def self.response(status=500, body='Aucun body')
    app = proc do |_env|
      [status.to_s, { 'Content-Type' => 'text/html' }, [body.to_s]]
    end
    app
  end

  def self.hello
    response(200, '<h1>Hello my rack</h1>')
  end

  def self.about
    response(200, '<h1>About page</h1>')
  end
end
