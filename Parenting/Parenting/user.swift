//
//  user.swift
//  Parenting
//
//  Created by 大場史温 on 2021/06/03.
//

import Foundation

struct user {
    private(set) public var username : String
    private(set) public var useritem : String
    private(set) public var userimage : String
    
    init(username: String, useritem: String, userimage: String) {
        self.username = username
        self.useritem = useritem
        self.userimage = userimage
    }
}
