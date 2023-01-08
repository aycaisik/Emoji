//
//  EmojiTableViewController.swift
//  Emoji
//
//  Created by Ayça Işık on 8.01.2023.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    
    // MARK: - Properties
      var emojis: [Emoji] = [
          Emoji(symbol: "😀", name: "Grinning Face",
                description: "A typical smiley face.", usage: "happiness"),
          Emoji(symbol: "😕", name: "Confused Face",
                description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
          Emoji(symbol: "😍", name: "Heart Eyes",
                description: "A smiley face with hearts for eyes.",
                usage: "love of something; attractive"),
          Emoji(symbol: "👮", name: "Police Officer",
                description: "A police officer wearing a blue cap with a gold badge.",
                usage: "person of authority"),
          Emoji(symbol: "🐢", name: "Turtle",
                description: "A cute turtle.",
                usage: "Something slow"),
          Emoji(symbol: "🐘", name: "Elephant",
                description: "A gray elephant.",
                usage: "good memory"),
          Emoji(symbol: "🍝", name: "Spaghetti",
                description: "A plate of spaghetti.",
                usage: "spaghetti"),
          Emoji(symbol: "🎲", name: "Die",
                description: "A single die.",
                usage: "taking a risk, chance; game"),
          Emoji(symbol: "⛺️", name: "Tent",
                description: "A small tent.",
                usage: "camping"),
          Emoji(symbol: "📚", name: "Stack of Books",
                description: "Three colored books stacked on each other.",
                usage: "homework, studying"),
          Emoji(symbol: "💔", name: "Broken Heart",
                description: "A red, broken heart.",
                usage: "extreme sadness"),
          Emoji(symbol: "💤", name: "Snore",
                description: "Three blue \'z\'s.",
                usage: "tired, sleepiness"),
          Emoji(symbol: "🏁", name: "Checkered Flag",
                description: "A black-and-white checkered flag.",
                usage: "completion")
      ]
      
      // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
