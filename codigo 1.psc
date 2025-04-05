Proceso BioMedica_Useche
    Definir stock Como Entero
    Definir menu1 Como Caracter
    stock = 20
    
    Repetir
        menu1 = MostrarMenuPrincipal()
        Limpiar Pantalla
        Segun menu1 Hacer
            1: ManejarInsumos(stock)
            2: ManejarMaquinas(stock)
            3: ManejarMantenimiento()
            4: ManejarMusica()
            5: stock = ManejarConfiguracion(stock)
        Fin Segun
    Hasta Que menu1 == "5"
Fin Proceso

Funcion MostrarMenuPrincipal Como Caracter
    Definir menu1 Como Caracter
    Escribir "Bienvenido"
    Escribir "==============================="
    Escribir "1) Insumos"
    Escribir "2) Máquinas operatorias"
    Escribir "3) Mantenimiento"
    Escribir "4) Música ambiente"
    Escribir "5) Configuración"
    Escribir "==============================="
    Escribir "¿Cuál opción desea?"
    Escribir "Ingrese un dígito"
    Escribir "==============================="
    Leer menu1
    Mientras menu1 <> "1" Y menu1 <> "2" Y menu1 <> "3" Y menu1 <> "4" Y menu1 <> "5"
        Escribir "Opción no válida. Intente nuevamente."
        Leer menu1
    Fin Mientras
    Retornar menu1
Fin Funcion

SubProceso ManejarInsumos(stock Por Valor)
    Definir insumos Como Caracter
    Definir cantidad Como Entero
    Escribir "Nuestros Insumos"
    Escribir "==============================="
    Escribir "1) Jeringas Desechables"
    Escribir "2) Camillas"
    Escribir "==============================="
	
    insumos = LeerOpcionInsumos()
    Limpiar Pantalla
	
    Si insumos == "1" Entonces
        cantidad = SolicitarCantidad("Jeringas", 500, stock)
        Escribir "Su cantidad da un valor de $", cantidad * 500
    Fin Si
	
    Si insumos == "2" Entonces
        cantidad = SolicitarCantidad("Camillas", 90000, stock)
        Escribir "Su cantidad da un valor de $", cantidad * 90000
    Fin Si
	
    Escribir "Compra finalizada. Regresando al menú principal..."
Fin SubProceso

Funcion LeerOpcionInsumos Como Caracter
    Definir opcion Como Caracter
    Repetir
        Escribir "Seleccione una opción válida (1 o 2):"
        Leer opcion
    Hasta Que opcion == "1" O opcion == "2"
    Retornar opcion
Fin Funcion

Funcion SolicitarCantidad(nombre Como Caracter, precio Como Entero, stock Como Entero) Como Entero
    Definir cantidad Como Entero
    Escribir "==============================="
    Escribir "Nuestras ", nombre, " tienen un valor de $", precio
    Escribir "Cantidad de ", nombre, " disponibles: ", stock, " unidades"
    Escribir "¿Qué cantidad desea?"
    Repetir
        Leer cantidad
        Si cantidad > stock Entonces
            Escribir "Cantidad no disponible, tenemos ", stock, " unidades a disposición"
        Fin Si
    Hasta Que cantidad <= stock
    Retornar cantidad
Fin Funcion

SubProceso ManejarMaquinas(stock Por Valor)
    Definir maquinas Como Caracter
    Definir cantidad Como Entero
    Escribir "==============================="
    Escribir "Nuestras Máquinas Operatorias"
    Escribir "1) Bisturí"
    Escribir "2) Pinzas"
	
    maquinas = LeerOpcionMaquinas()
    Limpiar Pantalla
	
    Si maquinas == "1" Entonces
        cantidad = SolicitarCantidad("Bisturí", 10000, stock)
        Escribir "Su cantidad da un valor de $", cantidad * 10000
    Fin Si
	
    Si maquinas == "2" Entonces
        cantidad = SolicitarCantidad("Pinzas", 15000, stock)
        Escribir "Su cantidad da un valor de $", cantidad * 15000
    Fin Si
	
    Escribir "Compra finalizada. Regresando al menú principal..."
Fin SubProceso

Funcion LeerOpcionMaquinas Como Caracter
    Definir opcion Como Caracter
    Repetir
        Escribir "Seleccione una opción válida (1 o 2):"
        Leer opcion
    Hasta Que opcion == "1" O opcion == "2"
    Retornar opcion
Fin Funcion

SubProceso ManejarMantenimiento()
    Definir mantenimiento Como Caracter
    Definir cantidad Como Entero
    Escribir "==============================="
    Escribir "Nuestros Mantenimientos"
    Escribir "1) Mantenimiento Preventivo"
    Escribir "2) Mantenimiento Completo"
	
    mantenimiento = LeerOpcionMantenimiento()
    Limpiar Pantalla
	
    Si mantenimiento == "1" Entonces
        Escribir "El mantenimiento Preventivo tiene un costo de $120.000"
        Escribir "¿A cuántos equipos desea aplicarlo?"
        Leer cantidad
        Escribir "Total a pagar: $", cantidad * 120000
    Fin Si
	
    Si mantenimiento == "2" Entonces
        Escribir "El mantenimiento Completo tiene un costo de $200.000"
        Escribir "¿A cuántos equipos desea aplicarlo?"
        Leer cantidad
        Escribir "Total a pagar: $", cantidad * 200000
    Fin Si
	
    Escribir "Compra finalizada. Regresando al menú principal..."
Fin SubProceso

Funcion LeerOpcionMantenimiento Como Caracter
    Definir opcion Como Caracter
    Repetir
        Leer opcion
    Hasta Que opcion == "1" O opcion == "2"
    Retornar opcion
Fin Funcion

SubProceso ManejarMusica()
    Definir musica Como Caracter
    Definir cantidad Como Entero
    Escribir "==============================="
    Escribir "Nuestra playlist seleccionada"
    Escribir "1) Música Clásica"
    Escribir "2) Música Urbana"
	
    musica = LeerOpcionMusica()
    Limpiar Pantalla
	
    Si musica == "1" Entonces
        Escribir "Suscripción a Música Clásica: $5000/mes"
        Escribir "¿Cuántos meses desea suscribirse?"
        Leer cantidad
        Escribir "Total a pagar: $", cantidad * 5000
    Fin Si
	
    Si musica == "2" Entonces
        Escribir "Suscripción a Música Urbana: $5500/mes"
        Escribir "¿Cuántos meses desea suscribirse?"
        Leer cantidad
        Escribir "Total a pagar: $", cantidad * 5500
    Fin Si
	
    Escribir "Compra finalizada. Regresando al menú principal..."
Fin SubProceso

Funcion LeerOpcionMusica Como Caracter
    Definir opcion Como Caracter
    Repetir
        Leer opcion
    Hasta Que opcion == "1" O opcion == "2"
    Retornar opcion
Fin Funcion

Funcion ManejarConfiguracion(stock Como Entero) Como Entero
    Definir usuario, contraseña Como Caracter
    Repetir
        Escribir "Ingrese su usuario:"
        Leer usuario
        Escribir "Ingrese contraseña:"
        Leer contraseña
    Hasta Que (usuario == "andres" Y contraseña == "1234") O (usuario == "operario" Y contraseña == "1234")
	
    Si (usuario == "andres") Entonces
        Escribir "Bienvenido, Administrador"
        stock = ConfigurarAcceso(stock)
    Sino
        Escribir "Bienvenido, Operario"
    Fin Si
	
    Retornar stock
Fin Funcion

Funcion ConfigurarAcceso(stock Como Entero) Como Entero
    Definir admin Como Caracter
    Definir admin_1 Como Caracter
    Definir admin_lim Como Entero
	
    Escribir "Menú de Administración"
    Escribir "1) Configuración de límite"
    Escribir "2) Salir"
    Leer admin
	
    Si admin == "1" Entonces
        Escribir "¿A qué insumo deseas cambiar el límite de stock?"
        Escribir "1) Jeringas"
        Escribir "2) Camillas"
        Leer admin_1
		
        Escribir "Escoge la nueva cantidad de stock:"
        Leer admin_lim
        stock = admin_lim
        Escribir "Límite de stock actualizado a ", stock, " unidades."
    Fin Si

    Retornar stock
Fin Funcion
