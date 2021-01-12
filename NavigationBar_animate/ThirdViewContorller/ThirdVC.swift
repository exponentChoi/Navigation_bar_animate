//
//  ThirdVC.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2021/01/12.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let dummyStrs = DummyStrings.dummies
    private let cellId = "ThirdCell"
    private let headerId = "ThirdHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupCollectionView()
        setupCollectionLayout()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    private func setupCollectionView() {
        let xib = UINib(nibName: cellId, bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier: cellId)
        collectionView.register(ThirdHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.collectionViewLayout = StretchHeaderLayout()
    }
    
    private func setupCollectionLayout() {
//        collec
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let padding: CGFloat = 50
            layout.sectionInset = UIEdgeInsets(top: padding, left: 0, bottom: padding, right: 0)
        }
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

extension ThirdVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return headerView
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyStrs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCell", for: indexPath) as! ThirdCell
        cell.setupUI(dummyStrs[indexPath.row])
        return cell
    }
}

extension ThirdVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}
