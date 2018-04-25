//
//  PhotoViewController.swift
//  AlamofireTest
//
//  Created by Chhai Chivon on 4/8/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class PhotoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var photoTableView: UITableView!
    var photoPresenter : PhotoPresenter?
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let photoFileCell = UINib(nibName: "PhotoTableViewCell", bundle: nil)
        photoTableView.register(photoFileCell, forCellReuseIdentifier: "photo_table_view_cell")
        
//        photoPresenter = PhotoPresenter()
//        photoPresenter?.getData(page: 1, limit: 10)

        
//        Alamofire.request(ApiConstant.REST_END_POINT+ApiConstant.PHOTOS).response { (response) in
//            //let responseJson = JSON(response)
//            print(response)
//        }
//
        
//        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
//        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
//            let data = String(data: data!, encoding: String.Encoding.utf8)
//            print("content : " +  data!)
//        }
//        task.resume()
        
      
        photoTableView.dataSource = self
        photoTableView.delegate = self

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "photo_table_view_cell", for: indexPath)
        cell.textLabel?.text = "Hello"
        return cell
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

extension PhotoViewController : PhotoPresenterProtocol {
    
    func didResponseData(photos: [Photo]) {
        
    }
}
