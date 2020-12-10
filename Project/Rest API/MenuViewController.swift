//
//  MenuViewController.swift
//  Rest API
//
//  Created by Шынгыс Еркин on 10.12.2020.
//  Copyright © 2020 Niso. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    let photoController = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func qrBotton(_ sender: Any) {
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        self.present(photoController, animated: true, completion: nil)
    }
    @IBAction func qrButton(_ sender: Any) {
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        self.present(photoController, animated: true, completion: nil)
    }
}


extension MenuViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
//        photoImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//        picker.dismiss(animated: true, completion: nil)

    }
}
