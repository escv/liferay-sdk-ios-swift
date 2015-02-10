//
//  ViewController.swift
//  liferay-sdk-ios-swift
//
//  Created by Andre Albert on 10.02.15.
//  Copyright (c) 2015 PD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var session:LRSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // adjust to your environment
        
        let host = "http://localhost:8080"
        let username = "test@liferay.com"
        let password = "test"
        let companyId = 10155
        
        
        let auth = LRBasicAuthentication(username: username, password: password)

        self.session = LRSession(server: host, authentication: auth)
        let userService:LRUserService_v62 = LRUserService_v62(session: session)
        
        var e = NSError?()
        let users = userService.getCompanyUsersWithCompanyId(companyId, start: -1, end: -1, error:&e)

        
        println("######## Liferay call success ############")
        print(users)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

