//
//  SecondViewController.swift
//  SampleCollectionView
//
//  Created by 三浦　登哉 on 2021/03/09.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    private let catImages = ["cat1", "cat2", "cat3"]
    private let humanImages = ["父", "母", "五條悟"]
    private let titles = ["眠そう", "かわいい", "超可愛い"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = CGSize(width: 70, height: 100)
    }
}


extension SecondViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatCell", for: indexPath)
        let largeImageView = cell.viewWithTag(1) as! UIImageView
        let smallImageView = cell.viewWithTag(2) as! UIImageView
        let title = cell.viewWithTag(3) as! UILabel
        
        largeImageView.image = UIImage(named: catImages[indexPath.row])
        smallImageView.image = UIImage(named: humanImages[indexPath.row])
        title.text = self.titles[indexPath.row]
        
        return cell
    }
    
    
}
