//
//  Musicians.swift
//  MusicianClass
//
//  Created by Yiğit Doğan on 14.06.2026.
//

import Foundation

class Musicians {
    //properties
    var name : String
    var age : Int
    var instrument : String
    
    //initializer - constructor
    init(nameInit : String, ageInit : Int, instrumentInit : String){
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        print("a musician is born")
    }
    
    func play(){
        print("plays...")
    }
}
