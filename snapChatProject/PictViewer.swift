//
//  PictViewer.swift
//  snapChatProject
//
//  Created by siyuan on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class PictViewer: UIViewController {
    var Pict: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        MyPict.image = Pict
        // Do any additional setup after loading the view.
        let notificationName = Notification.Name("NotificationIdentifier")
        NotificationCenter.default.post(name: notificationName, object: nil)
        
        
    }
    @IBAction func PictTapped(_ sender: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var MyPict: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
