//
//  SMusician.swift
//  MusicianClass
//
//  Created by Yiğit Doğan on 15.06.2026.
//

import Foundation

class SubMusician : Musicians {
    override func play(){
        super.play()
        print("~but much slower...")
    }
}
