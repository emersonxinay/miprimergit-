=begin
Crear un archivo llamado 404.html cuyo body contenga una etiqueta de título con el texto "No se ha
encontrado la página :(".
Modificar el archivo config.ru para adaptarlo a los siguientes requerimientos:
Si se ingresa a la url /index:
Agregar un código de respuesta 200.
Agregar en los Response Headers un Content-type de tipo text/html.
Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en el
Index!".
Si se ingresa a la url /otro:
Agregar un código de respuesta 200.
Agregar en los Response Headers un Content-type de tipo text/html.
Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en otro
landing!".
Si se ingresa a cualquier otra url:
Agregar un código de respuesta 404.
Agregar en los Response Headers un Content-type de tipo text/html.
Agregar en el Response Body el archivo 404.html creado al inicio.
=end
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
