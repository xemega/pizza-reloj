//
//  InterfaceControllerQueso.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerQueso: WKInterfaceController {
    
    var tTamanio : String = ""
    var tMasa : String = ""
    
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
     
        let c = context as! Valores
        tTamanio = c.tamanio
        tMasa = c.masa
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func accionMozarela() {
        enviar("Mozarela")
    }
    
    @IBAction func accionCheddar() {
        enviar("Cheddar")
    }
    
    @IBAction func accionParmesano() {
        enviar("Parmesano")
    }
    
    @IBAction func accionSinQueso() {
        enviar("Sin queso")
    }
    
    func enviar(valor : String)
    {
        let valorContexto = Valores(t: self.tTamanio, m: self.tMasa, q: valor)
        pushControllerWithName("VistaIngredientes", context: valorContexto)
    }
    
    
}
