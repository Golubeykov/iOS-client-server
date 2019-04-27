//
//  MyFriendViewController2.swift
//  MyAppGB
//
//  Created by Антон Голубейков on 24/03/2019.
//  Copyright © 2019 Golubeykovs Software. All rights reserved.
//

import UIKit

class MyFriendViewController2: UIViewController {
    @IBOutlet weak var MyFriendCV: UICollectionView!
    var testperson = [TestPerson(image:[ #imageLiteral(resourceName: "DogLovers"), #imageLiteral(resourceName: "Kudryavtseva.jpg")])]

}

extension MyFriendViewController2: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testperson.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCell", for: indexPath) as! ImageFriendCollectionViewCell
        let testpers = testperson[indexPath.row]
        cell.TestImage.image = testpers.image[1]
        cell.TestImage.image = testpers.image[0]
        return cell
    }
    
    
}
