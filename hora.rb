class Hora
    #clase Hora
    attr_accessor :hora, :minutos, :segundos
    private :hora, :minutos, :segundos
    def initialize(hora = 0, minutos = 0, segundos = 0)
        #inicializa la clase con los valores en 0 si es que no se pasa ningun valor
        setHora(hora, minutos, segundos)
    end
    def setHora(hora = 0, minutos = 0, segundos = 0)
        #Condiciona los valores que deben ser puestos en cada variable
        @hora = hora >= 0 && hora <= 24 ? hora : 0
        @minutos = minutos >= 0 && minutos <= 59 ? minutos : 0
        @segundos = segundos >= 0 && segundos <= 59 ? segundos : 0
    end
    def getHora(form = "")
        #Retorna la hora en una lista si no se pasa ningun valor, retorna en formato Hora:Minutos:Segundos si se envia la letra s
        return form != "s" ? Array[@hora, @minutos, @segundos] :\
        "#{format('%02d', @hora)}:#{format('%02d',@minutos)}:#{format('%02d',@segundos)}"
    end
    def imprimirHora()
        #Imprime la hora en formato Hora:Minutos:Segundos
        puts "#{format('%02d', @hora)}:#{format('%02d',@minutos)}:#{format('%02d',@segundos)}"
    end
end
