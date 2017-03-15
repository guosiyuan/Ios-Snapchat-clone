//
//  MyPostPictureController.swift
//  snapChatProject
//
//  Created by siyuan on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class MyPostPictureController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var selPict: UIImage?
    var selSectionIndex: Int?//index of cell to be selected
    @IBOutlet weak var SelSection: UILabel!
    @IBOutlet weak var MyTabView: UITableView!
    @IBAction func PostButtonTouched(_ sender: UIButton) {
        if let secInd = selSectionIndex {
            let kk = selPict!
            let postTime = Date()
            let newPo = Post(img:kk, poster: "MySelf", postTime: postTime, viewed: false)
            threads[secInd]!.append(newPo)
            print(threads)
            //tell observe view to reload
            let notificationName = Notification.Name("NotificationIdentifier")
            NotificationCenter.default.post(name: notificationName, object: nil)
            
            //go back
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }
    //protocol below
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let thECell = MyTabView.dequeueReusableCell(withIdentifier: "tHeCell")
    let theCell = thECell as! MyFirstTableViewCell
    theCell.Scetion1Text.text = threadNames[indexPath.row]
    return theCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selSectionIndex = indexPath.row
        SelSection.text = "Selected:" + threadNames[selSectionIndex!]
    }
    
    
    
    
    //protocol above
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTabView.delegate = self
        MyTabView.dataSource = self
        // Do any additional setup after loading the view.
    }

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
