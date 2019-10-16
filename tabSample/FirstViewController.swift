//
//  FirstViewController.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/10/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import UIKit
import IGListKit

class FirstViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    lazy var users = [
        User(id: 1, name: "Littlefinger"),
        User(id: 2, name: "Tommen Baratheon"),
        User(id: 3, name: "Roose Bolton")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }

}

extension FirstViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return users
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        let sectionController = SectionController()
        return sectionController
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? { return nil }
    
}
