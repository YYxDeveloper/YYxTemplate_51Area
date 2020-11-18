//
//  YJCollectionViewHorizontalLineLayout.swift
//  inump_ios_core
//
//  Created by Michael Wu on 2020/4/20.
//  Copyright © 2020 Michael Wu. All rights reserved.
//

import UIKit

public class YJCollectionViewHorizontalLineLayout: UICollectionViewFlowLayout {
    public override init() {
        super.init()
        
        scrollDirection = .horizontal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView else { return proposedContentOffset }
        
        let x: CGFloat = proposedContentOffset.x
        let y: CGFloat = 0
        let width = collectionView.bounds.width
        let height = collectionView.bounds.height
        
        
        let rect = CGRect(x: x, y: y, width: width, height: height)
        guard let array = super.layoutAttributesForElements(in: rect) else { return proposedContentOffset }
        
        let centerX = collectionView.bounds.width * 0.5 + proposedContentOffset.x
        var minDelta = CGFloat.greatestFiniteMagnitude
        for attributes in array {
            let offset = attributes.center.x - centerX
            guard abs(minDelta) > abs(offset) else { continue }
            minDelta = offset
        }
        
        let newProposedContentOffset = CGPoint(x: proposedContentOffset.x + minDelta, y: 0)
        return newProposedContentOffset
    }
    
    public override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let collectionView = collectionView else { return nil }
        guard let array = super.layoutAttributesForElements(in: rect) else { return nil }
        
        let centerX = collectionView.bounds.width * 0.5 + collectionView.contentOffset.x
        for attributes in array {
            let delta = abs(attributes.center.x - centerX)
            let scale = 1 - delta / collectionView.frame.width
            attributes.transform = CGAffineTransform(scaleX: scale, y: scale)
        }
        return array
    }
    
    public override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
