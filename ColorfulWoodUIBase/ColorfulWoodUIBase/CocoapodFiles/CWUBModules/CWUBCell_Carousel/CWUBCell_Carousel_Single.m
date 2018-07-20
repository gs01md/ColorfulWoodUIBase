//
//  CWUBCell_Carousel_Single.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_Single.h"
#import "CWUBImageViewWithModel.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_Carousel_Single ()
@property(nonatomic, strong)NSMutableArray * m_array;
@end

@implementation CWUBCell_Carousel_Single

-(instancetype)initWithModel:(CWUBCell_Carousel_Single_Model*)model{

    if (self = [super init]) {

        self.m_model = model;

    }

    return self;
}

- (void) initWithSubViews{

    /**
     * 根据model类型，添加对应的视图，并保存起来供布局使用
     */
    for (NSObject * obj in self.m_model.m_array) {

        if ([obj isKindOfClass:[CWUBTextInfo class]]) {
            CWUBLabelWithModel * lbl = [[CWUBLabelWithModel alloc] initWithModel:(CWUBTextInfo*)obj];
            [self addSubview:lbl];
            [self.m_array addObject:lbl];
        }

        if ([obj isKindOfClass:[CWUBImageInfo class]]) {
            CWUBImageViewWithModel * img = [[CWUBImageViewWithModel alloc] initWithModel:(CWUBImageInfo*)obj];
            [self addSubview:img];
            [self.m_array addObject:img];
        }

    }

    [self func_updateConsrtains];

}

- (void) func_updateConsrtains{

}

#pragma mark - 属性
-(CWUBCell_Carousel_Single_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Carousel_Single_Model new];
    }

    return _m_model;
}

/**
 * 保存图片信息或文本信息的数组
 */
-(NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}

@end
