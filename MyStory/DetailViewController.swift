//
//  DetailViewController.swift
//  MyStory
//
//  Created by zhaos on 2/24/23.
//

import UIKit

class DetailViewController: UIViewController {
    //below
    var mouse: MickeyMouse?
    
    @IBOutlet weak var mouseImageView: UIImageView!
    
    @IBOutlet weak var mouseLabel: UILabel!
    @IBOutlet weak var mouseTextView: UITextView!
    //@IBOutlet weak var mouseTextField: UITextField!
    //above
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // below
        if let mouse = mouse{
            mouseImageView.image = mouse.image
            //mouseTextField.text = mouse.des
            mouseLabel.text = mouse.name
            mouseTextView.text = mouse.des
        }
        //above
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
