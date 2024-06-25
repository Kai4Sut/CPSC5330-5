//
//  Page.swift
//  CPSC5330-Project5
//
//  Created by user260677 on 6/25/24.
//

import Foundation

struct Page {
    init (_ id:Int, _ sto_tex:String, _ Aid:Int, _ Bid:Int, _ Atext:String, _ Btext:String, _ res:String) {
        
        storyID = id
        storyText = sto_tex
        choiceAid = Aid
        choiceBid = Bid
        choiceAtext = Atext
        choiceBtext = Btext
        result = res
        
        
    }
    
    var storyID: Int
    var storyText: String
    var choiceAid: Int
    var choiceBid: Int
    var choiceAtext: String
    var choiceBtext: String
    var result: String
}
