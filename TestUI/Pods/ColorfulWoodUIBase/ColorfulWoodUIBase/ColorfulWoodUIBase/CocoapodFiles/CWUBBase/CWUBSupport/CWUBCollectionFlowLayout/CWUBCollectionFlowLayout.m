//
//  CWUBCollectionFlowLayout.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/3.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCollectionFlowLayout.h"

@interface CWUBCollectionFlowLayout(){

    /**
     * 在居中对齐的时候需要知道这行所有cell的宽度总和
     */
    CGFloat m_sumCellWidth;
}

@end

@implementation CWUBCollectionFlowLayout

-(instancetype)init{
    return [self initWithType:CWUBCollectionFlowLayoutType_Default betweenOfCell:15.];
}

-(void)setBetweenOfCell:(CGFloat)betweenOfCell{
    _m_betweenOfCell = betweenOfCell;
    self.minimumInteritemSpacing = betweenOfCell;
}

-(instancetype)initWthType:(CWUBCollectionFlowLayoutType)cellType{
    return [self initWithType:cellType betweenOfCell:5.0];
}

-(instancetype)initWithType:(CWUBCollectionFlowLayoutType)cellType betweenOfCell:(CGFloat)betweenOfCell{
    self = [super init];
    if (self){
        self.scrollDirection = UICollectionViewScrollDirectionVertical;
        self.minimumLineSpacing = 5;
        self.minimumInteritemSpacing = betweenOfCell;
        self.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
        _m_betweenOfCell = betweenOfCell;
        _m_cellType = cellType;
    }
    return self;
}
- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray * layoutAttributes_t = [super layoutAttributesForElementsInRect:rect];
    NSArray * layoutAttributes = [[NSArray alloc]initWithArray:layoutAttributes_t copyItems:YES];
    //用来临时存放一行的Cell数组
    NSMutableArray * layoutAttributesTemp = [[NSMutableArray alloc]init];
    for (NSUInteger index = 0; index < layoutAttributes.count ; index++) {

        UICollectionViewLayoutAttributes *currentAttr = layoutAttributes[index]; // 当前cell的位置信息
        UICollectionViewLayoutAttributes *previousAttr = index == 0 ? nil : layoutAttributes[index-1]; // 上一个cell 的位置信
        UICollectionViewLayoutAttributes *nextAttr = index + 1 == layoutAttributes.count ?
        nil : layoutAttributes[index+1];//下一个cell 位置信息

        //加入临时数组
        [layoutAttributesTemp addObject:currentAttr];
        m_sumCellWidth += currentAttr.frame.size.width;

        CGFloat previousY = previousAttr == nil ? 0 : CGRectGetMaxY(previousAttr.frame);
        CGFloat currentY = CGRectGetMaxY(currentAttr.frame);
        CGFloat nextY = nextAttr == nil ? 0 : CGRectGetMaxY(nextAttr.frame);
        //如果当前cell是单独一行
        if (currentY != previousY && currentY != nextY){
            if ([currentAttr.representedElementKind isEqualToString:UICollectionElementKindSectionHeader]) {
                [layoutAttributesTemp removeAllObjects];
                m_sumCellWidth = 0.0;
            }else if ([currentAttr.representedElementKind isEqualToString:UICollectionElementKindSectionFooter]){
                [layoutAttributesTemp removeAllObjects];
                m_sumCellWidth = 0.0;
            }else{
                [self setCellFrameWith:layoutAttributesTemp];
            }
        }
        //如果下一个cell在本行，这开始调整Frame位置
        else if( currentY != nextY) {
            [self setCellFrameWith:layoutAttributesTemp];
        }
    }
    return layoutAttributes;
}

//调整属于同一行的cell的位置frame
-(void)setCellFrameWith:(NSMutableArray*)layoutAttributes{
    CGFloat nowWidth = 0.0;
    switch (_m_cellType) {
        case CWUBCollectionFlowLayoutType_Left:
            nowWidth = self.sectionInset.left;
            for (UICollectionViewLayoutAttributes * attributes in layoutAttributes) {
                CGRect nowFrame = attributes.frame;
                nowFrame.origin.x = nowWidth;
                attributes.frame = nowFrame;
                nowWidth += nowFrame.size.width + self.m_betweenOfCell;
            }
            m_sumCellWidth = 0.0;
            [layoutAttributes removeAllObjects];
            break;

        case CWUBCollectionFlowLayoutType_Center:
            nowWidth = (self.collectionView.frame.size.width - m_sumCellWidth - ((layoutAttributes.count - 1) * _m_betweenOfCell)) / 2;
            for (UICollectionViewLayoutAttributes * attributes in layoutAttributes) {
                CGRect nowFrame = attributes.frame;
                nowFrame.origin.x = nowWidth;
                attributes.frame = nowFrame;
                nowWidth += nowFrame.size.width + self.m_betweenOfCell;
            }
            m_sumCellWidth = 0.0;
            [layoutAttributes removeAllObjects];
            break;

        case CWUBCollectionFlowLayoutType_Right:
            nowWidth = self.collectionView.frame.size.width - self.sectionInset.right;
            for (NSInteger index = layoutAttributes.count - 1 ; index >= 0 ; index-- ) {
                UICollectionViewLayoutAttributes * attributes = layoutAttributes[index];
                CGRect nowFrame = attributes.frame;
                nowFrame.origin.x = nowWidth - nowFrame.size.width;
                attributes.frame = nowFrame;
                nowWidth = nowWidth - nowFrame.size.width - _m_betweenOfCell;
            }
            m_sumCellWidth = 0.0;
            [layoutAttributes removeAllObjects];
            break;

        default:
            break;
    }
}

@end

