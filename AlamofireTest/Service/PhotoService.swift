//
//  PhotoService.swift
//  AlamofireTest
//
//  Created by Chhai Chivon on 4/8/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PhotoService {

    var delegate :  PhotoServiceProtocol?
    
    func getData(page: Int , limit: Int) {
        Alamofire.request(ApiConstant.REST_END_POINT+ApiConstant.PHOTOS).response { (response) in
             let responseJson = JSON(response)
            print(responseJson)
        }
    }

}
