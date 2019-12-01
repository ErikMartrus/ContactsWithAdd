//
//  PEMDatosDeContactoController.swift
//  Contactos iOS
//
//  Created by Ernestina Martel Jordán on 14/9/15.
//  Copyright (c) 2015 Ernestina Martel Jordán. All rights reserved.
//

import UIKit

class DatosDeContactoController {
    
    var listaDeContactos = [DatosDeContacto]()
    
    init() {
        iniciarListaDeContactos()
    }
    
    private func iniciarListaDeContactos(){
        let fechaCumple = "10/11/1815"
        let fechaFormato = DateFormatter()
        fechaFormato.dateFormat = "dd/MM/yyyy"
        let fecha = fechaFormato.date(from: fechaCumple)
        let dato = DatosDeContacto(nombre: "Ada Augusta Byron",
                                   direccion: "Condado de Lovelace",
                                   telefono: "123456789",
                                   fechaCumple: fecha! as NSDate
        )
        agregarContacto(dato: dato)
        
        agregarContacto(dato: DatosDeContacto(nombre: "Miguel", direccion: "Capilla Anexo Bajo", telefono: "928451221", fechaCumple: fechaFormato.date(from: "27/05/1998")! as NSDate))
        
        agregarContacto(dato: DatosDeContacto(nombre: "Erik", direccion: "Capilla Anexo Alto", telefono: "928451222", fechaCumple: fechaFormato.date(from: "28/05/1998")! as NSDate))
        
    }
    
    
    
    func numeroDeContactos() -> Int {
        return listaDeContactos.count
    }
    
    func obtenerContacto(indice: Int) -> DatosDeContacto? {
        let numElementos = listaDeContactos.count
        if (indice < numElementos) {
            return listaDeContactos[indice]
        }
        return nil
    }
    
    func agregarContacto(dato: DatosDeContacto){
        listaDeContactos.append(dato)
    }
}
