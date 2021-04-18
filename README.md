Prueba #1
Construye una clase de nombre Hora, que permita almacenar la hora, así como
los métodos para manipularla. Tendrá las siguientes propiedades y métodos:
 1. Propiedades (todas ellas privadas):
 hora: de tipo entero (00 a 24), minutos: de tipo entero (00 a 59), segundos: de tipo
entero (00 a 59)
2. Constructor que, por defecto, inicialice las propiedades de la clase a 0
3. Constructor al que se le pasen como argumentos tres enteros y se los asigne a
las propiedades de la clase. Si la cantidad recibida no satisface las restricciones
de los valores impuestos a horas, minutos y segundos, el valor que se fija es 0
4. Métodos de la clase
• setHora(): recibe como argumentos tres enteros y se los asigna a las
propiedades de la clase. Utiliza el mismo nombre en las variables que reciben
los argumentos y en las propiedades de la clase. Este método ha de diseñarse
mediante programación por contrato, es decir, debe incluir una precondición: si
los valores recibidos no satisfacen las restricciones de los valores impuestos a
horas, minutos y segundos, el valor que se establece es 0. Ya que va a ser
utilizado en el constructor, este precondición podría implementarse en su
propia rutina para ser llamada desde este método y desde el “constructor”.
• get Hora() devuelve la hora como una lista de la forma
[horas, minutos, segundos] o como un string de la forma
"horas:minutos:segundos".
• imprimirHora() que muestra la hora en formato string de la forma
horas:minutos:segundos
• Métodos set() y get() para todas las propiedades 


--------
Prueba #2
Se quiere mantener una colección de los libros que hemos ido leyendo,
poniéndoles una calificación según nos haya gustado más o menos al leerlo. Para
ello, crear la clase Libro, cuyos atributos son el título, el autor, el número de
páginas y la calificación que le damos entre 0 y 10.
Crear los métodos típicos para poder modificar y obtener los atributos si tienen
sentido. Posteriormente, crear una clase ConjuntoLibros, que almacena un
conjunto de libros (con un array de un tamaño fijo).
Se pueden añadir libros que no existan, eliminar libros por título, mostrar por
pantalla los libros con la mayor y menor calificación dada y, por último, mostrar un
contenido de todo el conjunto.
Realice varias pruebas. En concreto, pruebe a: crear libros, añadirlos al conjunto,
eliminar por el criterio establecido, volver a añadir un libro y mostrar el contenido
final. 