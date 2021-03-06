object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var acumuladorSueldo = 0
	var deudaAcumulada = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	
	method cobrarSueldo(){
		acumuladorSueldo += self.sueldo() 
		dinero += self.sueldo()
	}
	
	method totalCobrado() = acumuladorSueldo 
	
	method gastar(cuanto){
		if(dinero >= cuanto){
			dinero -= cuanto
		}else{
			deudaAcumulada = cuanto - dinero
		}
	}
	method totalDeuda() = deudaAcumulada 
		
	
	method totalDinero(){
		if(dinero < deudaAcumulada){
			dinero = 0
		}else {
			dinero -= deudaAcumulada
		}
		return (dinero)
	}
	
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		
	}
}

object galvan {
	var dinero = 300000
	var deudaAcumudala = 0
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
	method gastar(cuanto){
		if(dinero >= cuanto){
			dinero -= cuanto
		}else{
			deudaAcumudala = cuanto - dinero
		}
	}
	method totalDuedua() = deudaAcumudala 
		
	
	method totalDienero() = dinero 
}
