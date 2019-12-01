//
//  PEMDatosDeContacto.swift
//  Contactos iOS
//
//  Created by Ernestina Martel Jordán on 14/9/15.
//  Copyright (c) 2015 Ernestina Martel Jordán. All rights reserved.
//

import UIKit

class DatosDeContacto {
    
    var nombre,direccion,telefono : String
    var fechaCumple : NSDate
    
    init (nombre: String, direccion: String, telefono: String, fechaCumple: NSDate){
        self.nombre = nombre
        self.direccion = direccion
        self.telefono = telefono
        self.fechaCumple = fechaCumple
     }
   
}
