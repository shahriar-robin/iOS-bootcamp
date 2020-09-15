//
//  ViewController.swift
//  collectionViewTest
//
//  Created by Appnap WS09 on 1/9/20.
//  Copyright © 2020 Appnap WS09. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //defining a variable for cells
    var numberOfCells: Int = 5
    var runningSplit: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK:- Collection View Delegates

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //load the cell from the MyCollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        
        if indexPath.item == runningSplit{
            cell.backgroundColor = UIColor(red: 91/255, green: 178/255, blue: 237/255, alpha: 1)
        }
        
        // MARK:- Subview section here
//        let progress = CALayer()
//        progress.frame = CGRect(x: cell.progressView.frame.origin.x, y: cell.progressView.frame.origin.y, width: cell.progressView.frame.size.width, height: cell.progressView.frame.size.height)
//        progress.backgroundColor = UIColor(red: 0/255, green: 175/255, blue: 153/255, alpha: 1).cgColor
//        progress.cornerRadius = 5
//        cell.progressView.layer.sublayers?.removeAll()
//        cell.progressView.layer.addSublayer(progress)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //custom the size of the cell dynamically in the code
        let width = (view.frame.size.width - (10*(CGFloat(numberOfCells)-1)) - 48) / CGFloat(numberOfCells)
        
        return CGSize(width: width, height: 6)
    }
    
    
}

