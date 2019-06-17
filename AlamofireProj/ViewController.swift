//
//  ViewController.swift
//  AlamofireProj
//
//  Created by liddell049 on 2019/06/17.
//  Copyright © 2019 liddell049. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getProjs()
    }
    let header: HTTPHeaders = [
        "x-api-key" : "時間とかした〜〜〜😭"
    ]

    private func getProjs() {
        //エンコーディングの方法がミソ。JSONEncoding.default → URLEncoding.queryString
        Alamofire.request("https://93d585ca-3b49-4fed-9736-1d290aa8acae.mock.pstmn.io/api/projects", method: .get, parameters: [:], encoding: URLEncoding.queryString, headers: header)
            .responseJSON { response in
                print(response.result.value as? [String: Any])
        }
    }
}

