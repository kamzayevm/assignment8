//
//  ViewController.swift
//  assignment8
//
//  Created by Мубарак Камзаев on 6.11.2024.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    let films = favoriteFilmsTests().favoritsFilms
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myCell
        cell.titleLabel.text = films[indexPath.row].title
        cell.filmImage.image = UIImage(named: films[indexPath.row].image)
        cell.ratingLabel.text = "Рейтинг: \(films[indexPath.row].rating)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFilm = films[indexPath.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        vc.titleText = selectedFilm.title
        vc.rating = selectedFilm.rating
        vc.imageName = selectedFilm.image
        vc.descriptionText = selectedFilm.description
        navigationController?.pushViewController(vc, animated: true)
    }
}

