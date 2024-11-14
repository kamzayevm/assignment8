//
//  DetailViewController.swift
//  assignment8
//
//  Created by Мубарак Камзаев  on 6.11.2024.
//
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var imageName: String = ""
    var titleText: String = ""
    var rating: Double = 0.0
    var descriptionText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleText
        imageView.image = UIImage(named: imageName)
        ratingLabel.text = "Рейтинг: \(rating)"
        descriptionLabel.text = descriptionText
        
    }
}
