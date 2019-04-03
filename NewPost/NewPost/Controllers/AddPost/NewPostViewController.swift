//
//  NewPostViewController.swift
//  NewPost
//
//  Created by Kuster, Tyler on 4/3/19.
//  Copyright © 2019 Tyler. All rights reserved.
//

import UIKit

class NewPostViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {//, AddInfoSectionDelegate, AddPhotoHeaderDelegate {
    @IBOutlet var newPostCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cancelNewPost(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //
    // CollectionView Delegate
    //
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId", for: indexPath)
            
            return reusableview
            
            
        default:  fatalError("Unexpected element kind")
        }
    }
}
