//
//  TodayCollectionHeaderView.swift
//  AppStore
//
//  Created by JUNO on 2022/06/10.
//

import UIKit
import SnapKit

final class TodayCollectionHeaderView: UICollectionReusableView {
    private lazy var dataLabel: UILabel = {
        let label = UILabel()
        label.text = "6월 28일 월요일"
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .secondaryLabel
        
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "투데이"
        label.font = .systemFont(ofSize: 36, weight: .black)
        label.textColor = .label
        
        return label
    }()
    
    func setupSubView(){
        [dataLabel, titleLabel]
            .forEach{ addSubview($0) }
        
        dataLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(32)
        }
        
        titleLabel.snp.makeConstraints {
            $0.left.equalTo(dataLabel)
            $0.top.equalTo(dataLabel.snp.bottom).offset(8)
        }
    }
}
