//
//  SecondVC.swift
//  CollViewDataDemo
//
//  Created by Vishal Narvani on 27/09/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit

class SecondVC: UIViewController,UICollectionViewDataSource {

    @IBOutlet weak var collViewData: UICollectionView!
    
    let appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return appDel.arrStudents.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var itemCollView = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollViewItem", for: indexPath) as! MyCollViewItem
        var singleStu = appDel.arrStudents[indexPath.row]
        
        itemCollView.lblName.text = singleStu.name
        itemCollView.lblName.text = appDel.arrStudents[indexPath.row].name
        return itemCollView
    }
}











