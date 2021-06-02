//
//  FartDataModel.swift
//  Sounds
//
//  Created by Dambar Bista on 9/25/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit


// Storing all the data of FartSound for user interface on FartVC -> tableView
struct FartModel {
    
    static let fartData = [
        
        FartItems(image: UIImage(named: "frogFart.png")!, sound: "fart1"),
        FartItems(image: UIImage(named: "octuFart.png")!, sound: "fart3"),
        FartItems(image: UIImage(named: "roosterFart.png")!, sound: "fart8"),
        FartItems(image: UIImage(named: "rabbitFart.jpg")!, sound: "fart6"),
        FartItems(image: UIImage(named: "bullFart.png")!, sound: "fart2"),
        FartItems(image: UIImage(named: "sheepFart.jpg")!, sound: "fart4"),
        FartItems(image: UIImage(named: "lionFart.jpg")!, sound: "fart7"),
        FartItems(image: UIImage(named: "hippoFart.png")!, sound: "fart5"),
    ]
    
    
    static func getFartImage(for index: Int) -> UIImage {
        return fartData[index].image
    }
    
    
    static func getFartSound(for index: Int) -> String  {
        return fartData[index].sound
    }
}
