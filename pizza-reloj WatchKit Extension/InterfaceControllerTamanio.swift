//
//  InterfaceControllerTamanio.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTamanio: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func accionChica() {
        enviar("Chica")
    }
    @IBAction func accionMediana() {
        enviar("Mediana")
    }
    @IBAction func accionGrande() {
        enviar("Grande")
    }
    
    func enviar(valor : String)
    {
        let valorContexto = Valores(t: valor)
        pushControllerWithName("VistaMasa", context: valorContexto)
        
    }
}
