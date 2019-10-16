//
//  FirstViewController.swift
//  tabSample
//
//  Created by 匂坂 勇仁 on 10/10/1 R.
//  Copyright © 1 Reiwa 匂坂 勇仁. All rights reserved.
//

import UIKit
import IGListKit

class FirstViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    lazy var users = [
        Tab(),
        User(id: 1, name: "Littlefinger"),
        User(id: 2, name: "Tommen Baratheon"),
        User(id: 3, name: "Roose Bolton"),
        User(id: 1, name: "Littlefinger"),
        User(id: 2, name: "Tommen Baratheon"),
        User(id: 3, name: "Roose Bolton"),
        User(id: 3, name: "Roose Bolton"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = collectionView
        adapter.dataSource = self
        adapter.scrollViewDelegate = self
        sss()
    }

    func sss() {
        users.append(User(id: 4, name: "Roose sss"))
        users.append(Tab())
        users.append(User(id: 4, name: "Roose sss"))
        users.append(Tab())
        adapter.reloadData()
    }
    var a = 800
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if Int(scrollView.contentOffset.y) > a {
            sss()
            a = a + 500
        }
        
    }
}

extension FirstViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return users as! [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is User {
            return SectionController()
        } else {
            return TabSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? { return nil }
}
