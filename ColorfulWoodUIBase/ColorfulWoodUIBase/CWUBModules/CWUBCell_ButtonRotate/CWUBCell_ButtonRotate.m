//
//  CWUBCell_ButtonRotate.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ButtonRotate.h"
#import "CWUBViewButtonRotate.h"

@interface CWUBCell_ButtonRotate()


@property (nonatomic, strong) CWUBViewButtonRotate *m_button;

@end

@implementation CWUBCell_ButtonRotate

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ButtonRotate_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.m_model = model;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initWithSubViews];
    }

    return self;
}

- (void) initWithSubViews{

    [self addSubview:self.m_button];

    [_m_button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical*3);
        make.centerX.equalTo(self);
        make.width.equalTo(@(CWUBGeneralWidth(69.)));
        make.height.equalTo(@(CWUBGeneralWidth(69.)));
        make.bottom.equalTo(self).offset(-CWUBGeneralWidth(69.));

    }];

}

-(CWUBCell_ButtonRotate_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ButtonRotate_Model new];
    }

    return _m_model;
}

- (CWUBViewButtonRotate *)m_button{

    if (!_m_button) {
        float fLeft   = 0;
        float fTop    = 0;
        float fWidth  = CWUBGeneralWidth(69.0);
        float fHeight = CWUBGeneralWidth(69.0);
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_button = [[CWUBViewButtonRotate alloc] initWithFrame:rect imgs: self.m_model.m_imgs];

        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_refer)];
        [_m_button addGestureRecognizer:tap];

    }
    return _m_button;
}

- (void) interface_updateWithModel:(CWUBCell_ButtonRotate_Model*)model{

    self.m_model = model;
    [self.m_button setImageArray:model.m_imgs];

}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 事件
- (void) event_refer {
    if ([self.delegate respondsToSelector:@selector(CWUBCell_ButtonRotate_Deletate_refer)]) {

        [self.delegate CWUBCell_ButtonRotate_Deletate_refer];
    }
}
@end



