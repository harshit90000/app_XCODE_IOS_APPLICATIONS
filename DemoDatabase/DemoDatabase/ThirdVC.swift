//
//  ThirdVC.swift
//  DemoDatabase
//
//  Created by Vishal Narvani on 12/10/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit
import CoreData


class ThirdVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var collView: UICollectionView!

    var appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var context = appDel.persistentContainer.viewContext
        let fetchReq = NSFetchRequest<NSManagedObject>(entityName: "Student")
        
        do {
            try appDel.globalArr = context.fetch(fetchReq)
        } catch let err as NSError {
            print(err)
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear")
        
        collView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return appDel.globalArr.count
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
     {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCell
        var singleRow = appDel.globalArr[indexPath.row]
        cell.lblName.text = (singleRow.value(forKey: "name")! as! String)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        appDel.selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "wayToCollDetail", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
