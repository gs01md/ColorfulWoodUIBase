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
#import <Masonry/Masonry.h>

@interface CWUBCell_Carousel_Single ()
@property(nonatomic, strong)NSMutableArray * m_array;
@end

@implementation CWUBCell_Carousel_Single

-(instancetype)initWithModel:(CWUBCell_Carousel_Single_Model*)model{

    if (self = [super init]) {

        self.m_model = model;

        [self initWithSubViews];
    }

    return self;
}

- (void) initWithSubViews{

    /**
     * 根据model类型，添加对应的视图，并保存起来供布局使用
     */
    for (NSObject * obj in self.m_model.m_array) {

        if ([obj isKindOfClass:[CWUBTextInfo class]]) {

            CWUBTextInfo *text = (CWUBTextInfo*)obj;
            text.m_width = [text.m_text interface_getStringWidthWithFont:text.m_font];
            CWUBLabelWithModel *lbl = [[CWUBLabelWithModel alloc] initWithModel:text];
            [self addSubview:lbl];
            [self.m_array addObject:lbl];
        }

        if ([obj isKindOfClass:[CWUBImageInfo class]]) {

            CWUBImageInfo *imginfo = (CWUBImageInfo*)obj;
            CWUBImageViewWithModel *img = [[CWUBImageViewWithModel alloc] initWithModel:(CWUBImageInfo*)imginfo];
            [self addSubview:img];
            [self.m_array addObject:img];
        }

    }

    [self func_updateConstrains];

}

- (void) func_updateConstrains{

    float fLastWidth = 0.;

    for (int i=0; i<self.m_array.count; i++) {

        UIView * view = [self.m_array objectAtIndex:i];

        if ([view isKindOfClass:[CWUBImageViewWithModel class]]) {

            CWUBImageViewWithModel * img = (CWUBImageViewWithModel*)view;
            [view mas_remakeConstraints:^(MASConstraintMaker *make) {

                make.left.equalTo(self).offset(fLastWidth + img.m_model.m_margin_left);
                make.width.equalTo(@(img.m_model.m_width));
                make.height.equalTo(@(img.m_model.m_height));
                make.centerY.equalTo(self);

            }];

            fLastWidth += img.m_model.m_margin_left;
            fLastWidth += img.m_model.m_width;

        }

        if ([view isKindOfClass:[CWUBLabelWithModel class]]) {

            CWUBLabelWithModel * lbl = (CWUBLabelWithModel*)view;
            [view mas_remakeConstraints:^(MASConstraintMaker *make) {

                make.left.equalTo(self).offset(fLastWidth + lbl.m_model.m_margin_left);
                make.width.equalTo(@(lbl.m_model.m_width));
                make.centerY.equalTo(self);

            }];

            fLastWidth += lbl.m_model.m_margin_left;
            fLastWidth += lbl.m_model.m_width;

        }

    }

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

#pragma mark - 功能
/**
 * 获取总长度
 */
- (float) interface_getLength{

    float iLen = 1.;

    /**
     * 根据model类型，添加对应的视图，并保存起来供布局使用
     */
    for (int i=0; i < self.m_model.m_array.count; i++) {

        NSObject * obj = [self.m_model.m_array objectAtIndex:i];
        if ([obj isKindOfClass:[CWUBTextInfo class]]) {

            CWUBTextInfo *text = (CWUBTextInfo*)obj;
            text.m_width = [text.m_text interface_getStringWidthWithFont:text.m_font];

            iLen += text.m_width;
            iLen += text.m_margin_left;

        }

        if ([obj isKindOfClass:[CWUBImageInfo class]]) {

            CWUBImageInfo *imginfo = (CWUBImageInfo*)obj;
            iLen += imginfo.m_width;
            iLen += imginfo.m_margin_left;
        }

    }

    /**
     * 冗余一段长度
     */
    iLen += 5.;

    return iLen;
}
@end
