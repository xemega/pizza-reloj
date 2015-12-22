//
//  InterfaceControllerConfirma.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit
import Foundation

var tTamanio : String = ""
var tMasa : String = ""
var tQueso : String = ""
var tIngre : [String:String]!

class InterfaceControllerConfirma: WKInterfaceController {

    @IBOutlet var pizza: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let c = context as! Valores
        tTamanio = c.tamanio
        tMasa = c.masa
        tQueso = c.queso
        tIngre = c.ingredientes
        
        var tPizza : String = ""
        tPizza = "Tamaño: " + tTamanio + "\n"
        tPizza = tPizza + "Masa: " + tMasa + "\n"
        tPizza = tPizza + "Queso: " + tQueso + "\n"
        tPizza = tPizza + "Ingredientes: " + "\n"
        
        for i in tIngre {
            if i.1 != "" {
            tPizza = tPizza + " - " + i.1 + "\n"
            }
        }
        
        
        pizza.setText(tPizza)
        
        // Configure interface objects here.
    }


    @IBAction func accionEditar() {
        pushControllerWithName("VistaTamanio", context: nil)
    }
    @IBAction func accionEnviar() {
         pushControllerWithName("VistaNuevo", context: nil)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
