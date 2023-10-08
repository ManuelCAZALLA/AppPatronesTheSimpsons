//
//  StartingScreenTableViewCell.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 5/10/23.
//

import UIKit

class StartingScreenTableViewCell: UITableViewCell {
    //MARK: IBOUTLET
   
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func prepareForReuse() {
        nameCell.text = nil
        imageCell.image = nil
    }
    
     func  updateViews(data: DataModel?) {
        guard let data = data else {return}
       
        update(name: data.name)
         update(image: data.image)
    }
    
    private func update(name: String?){
        nameCell.text = name ?? ""
    }
    
    private func update(image: String?) {
        imageCell.image = UIImage(named: image ?? "")
    }
}
