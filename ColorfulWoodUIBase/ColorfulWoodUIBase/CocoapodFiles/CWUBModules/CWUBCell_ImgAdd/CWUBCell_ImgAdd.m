//
//  CWUBCell_ImgAdd.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/17.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgAdd.h"

@implementation CWUBCell_ImgAdd

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgAdd_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        [self addSubview:self.m_img_sep];

        self.backgroundColor = [UIColor redColor];

        [self func_updateConsrtains];
    }

    return self;
}

- (void) interface_updateWithModel:(CWUBCell_ImgAdd_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;

    [self func_updateConsrtains];
}

/**
 * 添加或者删除图片
 */
- (void) func_initWithSubViews{

    [self func_removePices];

    for (int i=0; i<self.m_model.m_imgArr.count; i++) {

        CWUBImageInfo *info = (CWUBImageInfo *)self.m_model.m_imgArr[i];
        [self func_addPic:info];
    }

}

/**
 * 添加图片
 */
- (void)func_addPic:(CWUBImageInfo *)model{

    CWUBImageViewWithModel *imgView = [[CWUBImageViewWithModel alloc] initWithModel:model];

    [self.m_arrayImg addObject:imgView];

    [self addSubview:imgView];

}

/**
 * 移除图片，重新加载
 */
- (void)func_removePices{


    for (UIView *view in self.m_arrayImg) {

        if ([view isKindOfClass:[CWUBImageViewWithModel class]]) {
            [view removeFromSuperview];
        }
    }

    [self.m_arrayImg removeAllObjects];

}

- (void)func_updateConsrtains{

    /**
     * 先清除图片控件，再加入新的数据，最后调整位置
     */
    [self func_initWithSubViews];

    /**
     * 调整位置
     */

    //首先，设置起始位置
    float fNextTop = self.m_model.m_margin_top;
    float fNextLeft = self.m_model.m_margin_left;

    /**
     * 依次设置位置
     */
    for (int i=0; i<self.m_arrayImg.count; i++) {

        CWUBImageViewWithModel *imgView = self.m_arrayImg[i];
        CWUBImageInfo *model = self.m_model.m_imgArr[i];

        [imgView mas_remakeConstraints:^(MASConstraintMaker *make) {

            make.left.mas_equalTo(fNextLeft);
            make.top.mas_equalTo(fNextTop);
            make.width.mas_equalTo(model.m_width);
            make.height.mas_equalTo(model.m_height);

        }];

        fNextTop = [self func_getNextTop:i lastLeft:fNextLeft lastTop:fNextTop  model:model];
        fNextLeft = [self func_getNextLeft:i last:fNextLeft model:model];
    }

    CWUBImageViewWithModel *imgView = self.m_arrayImg.lastObject;

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.mas_equalTo(self).offset(self.m_model.m_bottomLineInfo.m_margin_left);
        make.right.mas_equalTo(self).offset(-self.m_model.m_bottomLineInfo.m_margin_right);
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(self.m_model.m_bottomLineInfo.m_height);
        make.top.mas_equalTo(imgView.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];

}

/**
 * 根据上一个图片的位置，获取下一个的位置 : left
 */
- (float)func_getNextLeft: (int) index last:(float)lastLeft  model:(CWUBImageInfo *)model{

    float next = lastLeft;

    /**
     * 如果换行，则取最左侧
     */
    if ([self func_isNeedReturn:index lastLeft:lastLeft model:model]) {
        next = self.m_model.m_margin_left;
    } else {
        next = lastLeft + model.m_width + model.m_margin_right;
    }

    return next;
}

/**
 * 根据上一个图片的位置，获取下一个的位置 : top
 */
- (float)func_getNextTop: (int) index lastLeft:(float)lastLeft  lastTop:(float)lastTop model:(CWUBImageInfo *)model{

    float next = lastTop;

    /**
     * 如果换行，则取最左侧
     */
    if ([self func_isNeedReturn:index lastLeft:lastLeft model:model]) {
        next = lastTop + model.m_height + model.m_margin_bottom;
    } else {
        next = lastTop;
    }

    return next;
}

/**
 * 是否需要换行
 * 判断该元素是否是一行的第一个
 */
- (BOOL)func_isNeedReturn:(int) index lastLeft:(float)lastLeft model:(CWUBImageInfo *)model{

    BOOL isNeed = FALSE;

    float right = lastLeft + model.m_width + model.m_margin_right;

    if (right + model.m_margin_right + self.m_model.m_margin_right + model.m_width > CWUBDefineDeviceWidth ) {
        isNeed = TRUE;
    }

    return isNeed;
}

#pragma mark - 属性

- (CWUBCell_ImgAdd_Model *)m_model {

    if (!_m_model) {
        _m_model = [CWUBCell_ImgAdd_Model new];
    }

    return _m_model;

}

- (NSMutableArray *) m_arrayImg{

    if (!_m_arrayImg) {
        _m_arrayImg = [NSMutableArray new];
    }

    return _m_arrayImg;
}

#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
