//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by Mac on 18/4/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    private let imageCell: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    private func initUI() {
        
        contentView.addSubview(imageCell)
        contentView.layer.cornerRadius = 16
        
        NSLayoutConstraint.activate(
            [imageCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
             imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
             imageCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
             imageCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
             
             imageCell.heightAnchor.constraint(equalToConstant: 250)
            ])
    }
    
    func setData(image: String) {
        imageCell.image = UIImage(named: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
