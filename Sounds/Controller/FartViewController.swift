//
//  FartTableVC.swift
//  Sounds
//
//  Created by Dambar Bista on 9/25/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class FartViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FartModel.fartData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "fartViewCell", for: indexPath) as! FartTableViewCell
        cell.fartImageView.image = FartModel.getFartImage(for: indexPath.row)
        cell.selectionStyle = .none
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  245
    }
    

    // Play fart sound when item selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        AudioPlayer.playSound(with: FartModel.getFartSound(for: indexPath.row))
    }
    
}
