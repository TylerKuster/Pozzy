//
//  AddPostController.swift
//  NewPost
//
//  Created by Kuster, Tyler on 4/3/19.
//  Copyright © 2019 Tyler. All rights reserved.
//

import UIKit

class AddPostController: UIViewController {//, AddInfoSectionDelegate, AddPhotoHeaderDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "newPost")
        self.present(controller, animated: true) {
            self.tabBarController?.selectedIndex = 0
        }
    }
}
