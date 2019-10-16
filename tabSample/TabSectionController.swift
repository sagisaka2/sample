//
//  TabSectionController.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/16/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import UIKit
import IGListKit

class TabSectionController: ListSectionController {
    
    var tab: Tab?
    
}

extension TabSectionController {
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard let context = collectionContext else { return .zero }
        return CGSize(width: context.containerSize.width, height: 100)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(withNibName: "CollectionViewCell", bundle: nil, for: self, at: index) as! CollectionViewCell
        
        cell.textLabel.text = tab?.text
        return cell
    }
    
    override func didUpdate(to item: Any) {
        self.tab = item as? Tab
    }
    
    override func didSelectItem(at index: Int) {
    }
}
