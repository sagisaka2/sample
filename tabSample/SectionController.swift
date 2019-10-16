//
//  SectionController.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/10/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import UIKit
import IGListKit

class SectionController: ListSectionController {
    
    var user: User?
}

extension SectionController {
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        return CGSize(width: context.containerSize.width, height: 44)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(withNibName: "CollectionViewCell", bundle: nil, for: self, at: index) as! CollectionViewCell
        
        cell.textLabel.text = user?.name
        return cell
    }
    
    override func didUpdate(to item: Any) {
        self.user = item as? User
    }
    
    override func didSelectItem(at index: Int) {}
}
