//
//  InterfaceControllerIngredientes.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredientes: WKInterfaceController {

    var tTamanio : String = ""
    var tMasa : String = ""
    var tQueso : String = ""
    var contador : Int = 0
    var tIngre : [String:String] = ["":""]
    
    
    @IBOutlet var outOk: WKInterfaceButton!
    @IBOutlet var outJamon: WKInterfaceSwitch!
    @IBOutlet var outPepperoni: WKInterfaceSwitch!
    @IBOutlet var outPavo: WKInterfaceSwitch!
    @IBOutlet var outSalchicha: WKInterfaceSwitch!
    @IBOutlet var outAceituna: WKInterfaceSwitch!
    @IBOutlet var outCebolla: WKInterfaceSwitch!
    @IBOutlet var outPimiento: WKInterfaceSwitch!
    @IBOutlet var outPinia: WKInterfaceSwitch!
    @IBOutlet var outAnchoa: WKInterfaceSwitch!
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Valores
        tTamanio = c.tamanio
        tMasa = c.masa
        tQueso = c.queso
     
        
        // Configure interface objects here.
    }


    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        validar()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func accionPepperoni(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Pepperoni", forKey: "Pep")
                contador = contador+1
            }
            else
                {
                tIngre.removeValueForKey("Pep")
                contador = contador-1
            }
        }
        else
        {
            if value == true {
            outPepperoni.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Pep")
                contador = contador-1
            }
            
        }
        validar()
        
        
    }
    

    
    @IBAction func accionJamon(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Jamón", forKey: "Jam")
                contador = contador+1
            }
            else
            {
                tIngre.removeValueForKey("Jam")
                contador = contador-1
            }
        }
        else
        {
            if value == true {
            outJamon.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Jam")
                contador = contador-1
            }
        }
        validar()
        
        
    }
    
    @IBAction func accionPavo(value: Bool) {
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Pavo", forKey: "Pav")
                contador = contador + 1
            }
            else
            {
                tIngre.removeValueForKey("Pav")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outPavo.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Pav")
                contador = contador - 1
            }

        }
        validar()
        
    }
    
    @IBAction func accionSalchicha(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Salchicha", forKey: "Sal")
                contador = contador + 1
            }
            else
            {
                tIngre.removeValueForKey("Sal")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outSalchicha.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Sal")
                contador = contador - 1
            }
        }
        validar()
        
    }
    
    @IBAction func accionAceituna(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Aceituna", forKey: "Ace")
                contador = contador + 1
            }
            else
            {
                tIngre.removeValueForKey("Ace")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outAceituna.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Ace")
                contador = contador - 1
            }
        }
        validar()
        
    }
    
    @IBAction func accionCebolla(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Cebolla", forKey: "Ceb")
                contador = contador + 1
                
            }
            else
            {
                tIngre.removeValueForKey("Ceb")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outCebolla.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Ceb")
                contador = contador - 1
            }
        }
        validar()
        
    }
  
    @IBAction func accionPimiento(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Pimiento", forKey: "Pim")
                contador = contador + 1
                
            }
            else
            {
                tIngre.removeValueForKey("Pim")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outPimiento.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Pim")
                contador = contador - 1
            }
        }
        validar()
        
    }
    
    
    @IBAction func accionPinia(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Piña", forKey: "Pin")
                contador = contador + 1
               
            }
            else
            {
                tIngre.removeValueForKey("Pin")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outPinia.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Pin")
                contador = contador - 1
            }
        }
        validar()
        
    }
    
    @IBAction func accionAnchoa(value: Bool) {
        
        if contador<5
        {
            if value == true {
                
                tIngre.updateValue("Anchoa", forKey: "Anc")
                contador = contador + 1
                
            }
            else
            {
                tIngre.removeValueForKey("Anc")
                contador = contador - 1
            }
        }
        else
        {
            if value == true {
            outAnchoa.setOn(false)
            }
            else
            {
                tIngre.removeValueForKey("Anc")
                contador = contador - 1
            }
        }
        validar()
        
       
    }
    
    @IBAction func accionOk() {
        if contador>=1 && contador<=5
        {
        let valorContexto = Valores(t: tTamanio, m:tMasa, q: tQueso, i:tIngre)
        
        pushControllerWithName("VistaConfirmacion", context: valorContexto)
        }
        
    }
    
    func validar()
    {
        if contador >= 1 {
            outOk.setEnabled(true)
        }
        else
        {
            outOk.setEnabled(false)
        }
    }
}
