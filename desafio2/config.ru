# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
    [200, { 'Content-Type' => 'text/html' }, ['estas en el index']]
  elsif  env['REQUEST_PATH'] == '/otro'
    [200, { 'Content-Type' => 'text/html' }, ['Estas en otro lading!']]
  else
    [404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new
