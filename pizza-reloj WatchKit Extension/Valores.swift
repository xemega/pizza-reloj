//
//  Valores.swift
//  pizza-reloj
//
//  Created by César Méndez on 21/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String : String] = ["":""]
    
    init(t:String)
    {
        tamanio=t
    }
    
    init(t:String,m:String)
    {
        tamanio=t
        masa=m
    }
    
    init(t:String,m:String,q:String)
    {
        tamanio=t
        masa=m
        queso=q
    }
    init(t:String,m:String,q:String,i:[String:String])
    {
        tamanio=t
        masa=m
        queso=q
        ingredientes=i 
    }
    

}
