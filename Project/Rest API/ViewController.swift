//
//  ViewController.swift
//  Rest API
//
//  Created by Шынгыс Еркин on 10.12.2020.
//  Copyright © 2020 Niso. All rights reserved.
//

import UIKit
import ContactsUI

class TransferViewController: UIViewController {
    let contactsController = CNContactPickerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var telNumField: UITextField!
    
    @IBAction func contactButton(_ sender: Any) {
        contactsController.delegate = self
        self.present(contactsController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var sumField: UITextField!
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBAction func sendButton(_ sender: Any) {
        print("Phone number: ", telNumField.text)
        print("Your transfer sum", sumField.text, "(KZT)")
        print("Your message:", messageField.text)
    }
    
}


extension TransferViewController : CNContactPickerDelegate{
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        self.telNumField.text = contact.phoneNumbers[0].value.stringValue
    }
}
