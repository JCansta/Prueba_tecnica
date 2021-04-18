class Libro
    #Clase libro
    attr_accessor :titulo, :autor, :pag, :calif
    def initialize(titulo, autor, pag = 0, calif = 0)
        set(titulo, autor, pag, calif)
    end
    
    def set(titulo, autor, pag = 0, calif = 0)
        @titulo = titulo
        @autor = autor
        @pag = pag < 0 ? 0 : pag
        @calif = calif < 0 || calif > 10 ? 0 : calif
    end

    def edit(att = "", new)
        case att
        when "titulo"
            @titulo = new
        when "autor"
            @autor = new
        when "pag"
            @pag = new
        when "calif"
            @calif = new            
        else
            puts "Atributo no existe"
        end
    end

    def imprimir()
        puts "#{@titulo} con el Autor #{@autor} tiene el numero de paginas #{@pag} con una calificación del #{@calif}"
    end
end

class ConjuntoLibros
    #Clase ConjuntoLibros que hereda de Libro
    attr_accessor :biblioteca, :i, :size
    def initialize(size = 2)
        @biblioteca = Array.new(size, nil)
        @i = 0
        @size = size
    end

    def add(nuevo)
        #@biblioteca.insert(@i, nuevo)
        if @i < size
            @biblioteca[@i] = nuevo
            @i += 1
            return
        end
        puts "Libro no fue agregado al conjunto de libros por que este ya está lleno"
    end
    
    def new_add(titulo, autor, pag = 0, calif = 0)
        #añade un nuevo libro inexistente
        if @i < size
            a = Libro.new(titulo, autor, pag, calif)
            @biblioteca[@i] = a
            @i += 1
            return
        end
        puts "Libro no fue agregado al conjunto de libros por que este ya está lleno"
    end

    def eliminar(titu)
        #Elimina un libro por el nombre de la biblioteca
        count = 0
        check = FALSE
        #Recorre el array y chequea si existe y lo elimina
        while count < @biblioteca.length() do
            if @biblioteca[count].titulo == titu
                @biblioteca[count] = nil
                check = TRUE
                @i -= 1
                break
            end
            count += 1
        end
        #Si existe y el eliminado no fue el ultimo, arrastra todos posteriores 1 hacia atras
        if check && count < (@biblioteca.length - 1)
            while count < @biblioteca.length - 1 do
                @biblioteca[count] = @biblioteca[count+1]
                count += 1
            end
            @biblioteca[count] = nil
        end
    end

    def imprimir()
        #usa el metodo imprimir de la clase Libro para imprimir cada elemento
        @biblioteca.each do |a|
            if a != nil
                puts a.imprimir
            end
        end
        puts '----------------------------'
    end

    def mayor_menor()
        #saca el libro con el mayor y el menor valor de calificación
        count = 0
        return if @biblioteca[0] == nil
        max, min = @biblioteca[0], @biblioteca[0]

        while count < @size do
            
            if @biblioteca[count] == nil
                count += 1
                break
            end
            max = @biblioteca[count].calif > max.calif ? @biblioteca[count] : max
            min = @biblioteca[count].calif < min.calif ? @biblioteca[count] : min
            count += 1
        end
        puts "el mayor calificación es el libro #{max.titulo} con un valor de #{max.calif}"
        puts "el menor calificación es el libro #{min.titulo} con un valor de #{min.calif}" 
    end
end

a = Libro.new("Erebos", "Chayan", 20, 8)
c = Libro.new("jaime", "castro", 254, 2)
d = Libro.new("xd", "dd", 254, 2)
b = ConjuntoLibros.new(3)
b.add(a)
b.add(c)
b.new_add("los 3 mosqueteros", "hola mundo", 200, 5)
b.imprimir
b.add(d)
b.imprimir
b.eliminar("jaime")
b.imprimir
d = Libro.new("xd", "dd", 254, 2)
b.add(d)
b.imprimir
b.mayor_menor()
