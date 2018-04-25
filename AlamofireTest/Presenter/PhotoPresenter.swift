//
//  PhotoPresenter.swift
//  AlamofireTest
//
//  Created by Chhai Chivon on 4/8/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import Foundation

class PhotoPresenter {
    
    var photoService : PhotoService?
    var deleage : PhotoPresenterProtocol?
    
    
    init() {
        photoService = PhotoService()
        photoService?.delegate = self as! PhotoServiceProtocol
    }
    
    func getData(page:Int,limit:Int) {
        photoService?.getData(page: page, limit: limit)
    }
}

extension PhotoPresenter : PhotoPresenterProtocol {
    
    func didResponseData(photos: [Photo]) {
        self.deleage?.didResponseData(photos: photos)
    }
}
