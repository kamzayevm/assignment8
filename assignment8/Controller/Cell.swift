//
//  Cell.swift
//  assignment8
//
//  Created by Мубарак Камзаев  on 6.11.2024.
//

import UIKit

class myCell: UITableViewCell {
    
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var filmImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        
    }
    
    @IBAction func heartButtonPressed(_ sender: Any) {
        
    }
    
}
