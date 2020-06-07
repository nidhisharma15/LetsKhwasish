//
//  InerestViewController.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 07/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit
import SideMenu
class InerestViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    let items = ["Health", "Education", "Finance", "IT/Web", "Craft Me", "Food", "Beauty", "Entertainment", "Sports", "Ecommerce", "Fashion", "Consellour"]
    let itemsImgs = ["health", "edu", "money", "computer", "craft", "food", "beauty", "emtertain", "edu", "computer", "beauty", "edu"]

   
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.collectionView.register(UINib(nibName: "IntrestCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "IntrestCollectionViewCell")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //UICollectionView Delegate Method's
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IntrestCollectionViewCell", for: indexPath as IndexPath) as! IntrestCollectionViewCell
        cell.lblCategoryTitle.text = items[indexPath.row]
        cell.imgInterest.image = UIImage(named:itemsImgs[indexPath.row])
        cell.btnTick.isHidden = true
        cell.btnTick.tag = indexPath.row
        cell.btnTick.addTarget(self, action: #selector(tickButtonTapped), for: UIControl.Event.touchUpInside)
        return cell
           }

           // MARK: - UICollectionViewDelegate protocol

           func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
               // handle tap events
               //print("You selected cell #\(indexPath.item)!")
           let selectedCell: IntrestCollectionViewCell = collectionView.cellForItem(at: indexPath) as! IntrestCollectionViewCell
           
            selectedCell.btnTick.isHidden = false
            selectedCell.btnTick.isSelected = !selectedCell.btnTick.isSelected
           }
        //UIButton Action's
    @objc func tickButtonTapped(sender: UIButton){
            //sender.tag.isSelected = !sender.tag.isSelected
            
         }

    @IBAction func btnDoneAction(_ sender: Any) {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let initialViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
       let navigationVC = UINavigationController(rootViewController: initialViewController)
       present(navigationVC, animated: true, completion: nil)

//        let menu = SideMenuNavigationController(rootViewController: "HomeViewController")
//        present(menu, animated: true, completion: nil)
       }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
