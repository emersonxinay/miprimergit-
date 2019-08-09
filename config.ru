#config.ru
#Esto es una pagina web- lo que tienes que hacer es simplemente primero instalar rack con "gem install rack", que ppo cierto no interesa donde donde lo instalas es decir la direccion del archivo, luego creas la carpeta rack o cualquier nombre, y tu primer archivo dentro de ese mismo  tiene que tener como nombre "config.ru" es para que conecte con el servidor y luego te ejecuta el archivo. Una vez realizado solo lo ejecutas en tu terminal que prefieras como  "rackup" y te saldra un un "localhost:9292" es por lo general y eso copias y pegas a una pestaña de tu navegador y alli debe ejecutarse la respuesta tal cual el mensaje que escribiste para que se ejecutara

=begin
require 'rack'
class MiprimeraWebApp #objeto con el metodo call
  def call(env) # info de request
    #puts env['REQUEST PATH'] # te muestra toda la informacion de quien entro en tu pagina web pero mas detallada
    #[200 , {}, ['Hola perros como estan, yo pyes aqui ando con los mejores ']] # la respuesta ||\\ el 200 llegaria a ser el protocolo de red si esta bien la pagina o mal, etc. los entre llaves {} significa se va mostrar en el header. y el en corchetes significa el body de la pagina web.
    @env= env['RECUEST PATH'] #lo que hace es observar quienes visitaron tu pagina web
    #....................................
    #RESPONSIBE BODY

  [200, {'Content-Type' =>'text/html'}, [@env]]

  end
end

run MiprimeraWebApp.new
=end
#config.ru

=begin
require 'rack'
class MiprimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH'] # me identifica si es la url correcta o incorrecta
    if @url =='/index'
      [200, {'Content-Type' => 'text/plain'}, ['yea esto si es el index que buscabas '] ]
    else
        [200, {'Content-Type' => 'text/plain'}, ['lo lamento esto no es lo que buscas'] ]
  end
end
end

run MiprimeraWebApp.new
=end

require 'rack'
class MiprimeraWebApp
  def call(env)
   # me identifica si es la url correcta o incorrecta
    if  env['REQUEST_PATH'] =='/hola'
      [200, {'Content-Type' => 'text/html'}, ["pagina 1"] ]
    else
        [200, {'Content-Type' => 'text/html'}, [File.read("index.html")] ] #me lee archivo externo de formato index.html 
  end
end
end

run MiprimeraWebApp.new
