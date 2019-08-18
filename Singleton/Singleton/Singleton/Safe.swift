//
//  Save.swift
//  Singleton
//
//  Created by Nikita Kuprik on 8/19/19.
//  Copyright © 2019 Nikita Kuprik. All rights reserved.
//

class Safe {
    
    private init() {}
    
    static let shared = Safe()
    var money = 0
}
