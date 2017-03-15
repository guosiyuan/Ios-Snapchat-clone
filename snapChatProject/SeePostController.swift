//
//  SeePostController.swift
//  snapChatProject
//
//  Created by siyuan on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class SeePostController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Define identifier
        let notificationName = Notification.Name("NotificationIdentifier")
        
        // Register to receive notification
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTableData), name: notificationName, object: nil)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func reloadTableData() {
        self.tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (threads[section]?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeePoCell", for: indexPath)
        let cell1 = cell as! SeePostViewCell
        let viewed = threads[indexPath.section]?[indexPath.row].Viewed!
        if (viewed!){
            cell1.ColorDot.backgroundColor = UIColor.red
        } else {
            cell1.ColorDot.backgroundColor = UIColor.green
        }
        
        cell1.PosterName.text = threads[indexPath.section]?[indexPath.row].Poster!
        let now = Date()
        let postTime = threads[indexPath.section]?[indexPath.row].PostTime!
        cell1.PostTime.text = "posted"+String(Int(now.timeIntervalSince(postTime!)))+"s ago"
        // Configure the cell...

        return cell
    }
    var PictToDisp: UIImage?
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewed = threads[indexPath.section]?[indexPath.row].Viewed!
        if (viewed!) {
            return
        }
        PictToDisp = threads[indexPath.section]?[indexPath.row].Img
        threads[indexPath.section]?[indexPath.row].Viewed = true
        performSegue(withIdentifier: "ViewMyPict", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? PictViewer{
            dest.Pict = PictToDisp!
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
