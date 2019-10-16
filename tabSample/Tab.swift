//
//  Tab.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/10/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import IGListKit

final class Tab: NSObject {
    
    let id: String
    let text: String
    
    override init() {
        self.id = "recommend"
        self.text = "みてね使ってね!!"
    }
}

// MARK: - IGListDiffable
extension Tab: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
    
}
