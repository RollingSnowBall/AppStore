//
//  FeatureSectionCollectionViewCell.swift
//  AppStore
//
//  Created by JUNO on 2022/06/11.
//

import UIKit
import SnapKit
import SwiftUI

class FeatureSectionCollectionViewCell: UICollectionViewCell {
    private lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .systemBlue
        
        return label
    }()
    
    private lazy var appNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .label
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .secondaryLabel
        
        return label
    }()
    
    private lazy var imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.layer.cornerRadius = 7
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor.separator.cgColor
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    func setup(){
        setupSubView()
        
        typeLabel.text = "새로운 경험"
        appNameLabel.text = "고양이 사냥"
        descriptionLabel.text = "쥐가 계속 죽어가고 있다!"
        imageView.backgroundColor = .lightGray
    }
}

private extension FeatureSectionCollectionViewCell {
    func setupSubView(){
        [typeLabel, appNameLabel, descriptionLabel, imageView]
            .forEach{ addSubview($0) }
        
        typeLabel.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
        }
        
        appNameLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(typeLabel.snp.bottom)
        }

        descriptionLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(appNameLabel.snp.bottom).offset(4)
        }

        imageView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            $0.bottom.equalToSuperview().inset(8)
        }
    }
}
