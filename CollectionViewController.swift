//
//  CollectionViewController.swift
//  Hello  World
//
//  Created by cunextgenapple on 11/05/21.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var img = [UIImage(named: "a"), UIImage(named: "b"), UIImage(named: "c"),
               UIImage(named: "d"), UIImage(named: "e")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
    }
}
extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = img[indexPath.item]
        return cell
    }
    
    /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10) / 2
        return CGSize(width: size, height: size)*/
    
}
    

