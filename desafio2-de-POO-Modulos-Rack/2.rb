=begin
Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un
string con las medidas de los lados.
Crear un módulo llamado Formula.
Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos
(lados) y devuelva el perímetro.
Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y
devuelva el área.
Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
Instanciar un Rectangulo y un Cuadrado.
Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo
implementado.
=end

module Formula
  def perimetro(largo, ancho)
     2 *(largo + ancho)
  end
  def area(largo, ancho)
    largo * ancho
  end
end

class Rectangulo
   include Formula #aplicando el metodo mixin a Rectangulo
    attr_accessor :largo, :ancho

    def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
    end
    def lados
      puts "la del recctangulo son #{largo} y #{ancho}"
    end
end
class Cuadrado
  include Formula #aplicando el metodo mixin a Cuadrado
    attr_accessor :lado
    def initialize(lado)
    @lado = lado
    end
    def lados
      puts "las medidas son #{lado}"
    end
end
r = Rectangulo.new(4, 5)
c= Cuadrado.new(6)
puts "el largo del cuadrado es:  #{r.largo} y el ancho es #{r.ancho} "
puts "el lado del cuadrado es : #{c.lado}"
puts "el perimetro del cuadrado es:  #{c.perimetro(c.lado, c.lado)} y el area es: #{c.area(c.lado, c.lado)}" #esta cuestion es llamar a tu variable #{c.perimetro(c.lado, c.lado)}" tienes que llamar a lo metods¿so dentro de parentesis
puts " el perimetro del rectangulo es: #{r.perimetro(r.largo, r.ancho)} y el area  es: #{r.area(r.largo, r.ancho)}"
