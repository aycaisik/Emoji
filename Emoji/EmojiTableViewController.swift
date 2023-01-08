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
                usage: "completion") ,
          Emoji(symbol: "🐝", name: "Wız Wız Bee",
                description: "A cute bee.",
                usage: "send valentine")
      ]
      
      // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // 1 section varsa bu fonksiyonu yazmak zorunda değilsiniz.
        // Çünkü: Varsayılan section sayısı zaten 1'dir.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // Her section için 1 kez çalışıyor. Örneğin, 4 section'a sahip bir tableView varsa,
        // Bu fonksiyon her section için 1kez olmak üzere toplam 4 kez çalışacaktır.
        // Section parametresi o an çizilmekte olan section bilgisini verir.
        return emojis.count //Elimizdeki emoji sayısı kadar hücre olması..
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Bir hücre, ne zamanki ekrana gelecek; cellForRow ile çizilir.
        // Bu fonksiyonun kaç kez çalışacağı belli değildir.
            // Örnek 1: Kullanıcı hiç scrool etmez ise, ekranda görünebilir olan hücre sayısı kadar çalışır.
            // Örnek 2: Kullanıcı scroll etmeye başlarsa scroll ettiği sürece bu fonksiyon çalışır.
             
        //IndexPath: O an çizilmekte olan hücrenin konum bilgisi
        //Adım 1 : O an çizilmekte olan emoji nesnesine indexPath değeri ile ulaşmak
        let emoji = emojis[indexPath.row]
        
        //Adım 2 : Hücre oluşturmak.
        //ReuseIdentifier: Storyboard'da hücre için verdiğiniz identifier değeri.
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell")!
        
        //Adım 3: Hücreyi data ile doldurmak.
        cell.textLabel?.text = "\(emoji.symbol)- \(emoji.name)" //Title
        cell.detailTextLabel?.text = "\(emoji.description)" //Subtitle
        
        return cell
        
    }
    
    //MARK: - Table View Delegete
    //Zorunlu değil bu fonksiyonları yazmak.
    //Hücreye tıklandı bilgisi.
    //didselectrow yazsan yetiyor.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Bu fonksiyon, kullanıcı hücrenizi seçtiği zaman(üstüne tıkladığı zaman)çalışır.
        //indexPath'in row propertysini kullanarak üstüne tıklanılan emojiye ulaşılır.
        let selectedEmoji = emojis[indexPath.row]
        print("\(selectedEmoji.symbol)\(indexPath)")
        
    }
    
    //MARK: - Actions
    
    //move row at yazdık çıktı.
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //sourceIndexPath: sırası değiştirilmek istenen hücrenin konumu.
        //destinationIndexPath: gidilmesi istenen konum.(Parmak ekran kaldırılınca)
        
        //COK ONEMLI: "emojis" arrayin tableview hücre sırasıyla aynı kalması gerekir.
        //Bu senkronu sağlayabilmek için hareket ettirilen objenin, arrayde de konumu değiştirilir.
        //Adım 1: Hareket ettirilen emoji nesnesine ulaşmak ve arrayden silmek.
        let movedEmoji = emojis.remove(at: sourceIndexPath.row)
        //Adım 2: Silinen elemanı arrayde yeni yerine ekleriz.
        emojis.insert(movedEmoji, at: destinationIndexPath.row)
        //Adım 3: TableView güncellenen array sırası ile tüm elemanlarını yeniden çizicek.
        tableView.reloadData() 
        
    }
    
    @IBAction func editButtonTapped(_ button:UIBarButtonItem){
        
        //isEditing o an TableViewin edit modda olup olmadığı bilgisini verir.
        let tableViewEditing = tableView.isEditing
        //TableViewin editing moda girmesini ve çıkmasını sağlar.
        tableView.setEditing(!tableViewEditing, animated: true)
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
