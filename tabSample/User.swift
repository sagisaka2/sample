//
//  User.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/10/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import UIKit
import IGListKit

final class User: NSObject {
    
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

// MARK: - IGListDiffable
extension NSObject: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
    
}
