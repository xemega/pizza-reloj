//
//  InterfaceControllerMasa.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMasa: WKInterfaceController {
    
    var tTamanio : String = ""

    @IBOutlet var etiquetaMasa: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Valores
        tTamanio = c.tamanio
        //etiquetaMasa.setText(tTamanio)
        
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

    @IBAction func accionDelgada() {
        enviar("Delgada")
    }
    
    @IBAction func accionCrujiente() {
        enviar("Crujiente")
    }
    
    @IBAction func accionGruesa() {
        enviar("Gruesa")
    }
    
    func enviar (valor : String)
    {
        let valorContexto = Valores(t: tTamanio, m: valor)
        pushControllerWithName("VistaQueso", context: valorContexto)
    }
    
    
}
