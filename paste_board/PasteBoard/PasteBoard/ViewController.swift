//
//  ViewController.swift
//  PasteBoard
//
//  Created by admin on 13/03/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textViewPB: UITextView!
    @IBOutlet weak var imageViewPB: UIImageView!
    let pasteBoard = UIPasteboard.general
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonCopyTapped(_ sender: Any) {
        if(pasteBoard.hasStrings){
        pasteBoard.string = textViewPB.text
        textViewPB.text = ""
        }else if(pasteBoard.hasImages){
            pasteBoard.image = imageViewPB.image
            imageViewPB.image = nil
        }
    }
    
    @IBAction func buttonPasteTapped(_ sender: Any) {
        if(pasteBoard.hasStrings){
            textViewPB.text = pasteBoard.string
        }else if(pasteBoard.hasImages){
            imageViewPB.image = pasteBoard.image
        }
    }
    
    @IBAction func imageViewButtonTapped(_ sender: Any) {
        self.imageViewPB.isHidden = false
        self.textViewPB.isHidden = true
    }
    
    @IBAction func textViewButtonTapped(_ sender: Any) {
        self.textViewPB.isHidden = false
        self.imageViewPB.isHidden = true
    }
}

