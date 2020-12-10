//
//  RegistrationViewController.swift
//  Rest API
//
//  Created by Шынгыс Еркин on 10.12.2020.
//  Copyright © 2020 Niso. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var cardNumber: UITextField!
    
    @IBOutlet weak var cvv: UITextField!
    
    
    @IBAction func signUpButton(_ sender: Any) {
        print(phoneNumber.text)
        print(passWord.text)
        print(cardNumber.text)
        print(cvv.text)
    }
    
    
   }

 
class MyBank: UIViewController {
    
    let photoController = UIImagePickerController()
    @IBOutlet weak var cvv: UILabel!
    @IBOutlet weak var cardNum: UILabel!
    @IBOutlet weak var phoneNum: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNum.text = "7-(707)-818-58-82";
        cardNum.text = "12345678901234";
        cvv.text = "314";
        userNameLabel.text = "Yerkyn Shynggys";
        balanceLabel.text = "100 000 KZT"
    }

    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func selectPhoto(_ sender: Any) {
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        self.present(photoController, animated: true, completion: nil)
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            photoController.delegate = self
            photoController.sourceType = UIImagePickerController.SourceType.camera
            photoController.allowsEditing = false
            self.present(photoController, animated: true, completion: nil)
        }
    }
}

extension MyBank: UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        photoImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)

    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        
        picker.dismiss(animated: true, completion: nil)
    
    }
}

class Login: UIViewController {
    var bool = false;
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        check()
    }

    @IBAction func loginButton(_ sender: Any) {
        check()
    }
    
    @IBOutlet weak var loginbut: UIButton!

    func check(){
        loginbut.isEnabled = false;

        if(numberField.text == passwordField.text){
            bool = true;
            print("Success")
            loginbut.isEnabled = true;
        } else {
            loginbut.isEnabled = false;
        }
    }
}
