//
//  CWUBCell_UploadImgWithTitle_S1.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_UploadImgWithTitle_S1.h"


@interface CWUBCell_UploadImgWithTitle_S1()
/**
 * 用于显示一个背景浮层
 */
@property (nonatomic, strong) CWUBImageViewWithModel *m_img_back;
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_main;
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_front;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_top;

/**
 * 点击事件，位置在m_lbl_bottom上面
 */
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_click;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom;

@end

@implementation CWUBCell_UploadImgWithTitle_S1

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_UploadImgWithTitle_S1_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_UploadImgWithTitle_S1_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_UploadImgWithTitle_S1_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self func_initWithSubViews];
}

- (void) func_initWithSubViews{

    self.backgroundColor = [UIColor clearColor];

    [self addSubview:self.m_img_back];
    [self.m_img_back addSubview:self.m_img_main];
    [self.m_img_back addSubview:self.m_lbl_top];
    [self.m_img_back addSubview:self.m_lbl_bottom];
    [self.m_img_back addSubview:self.m_img_front];
    [self.m_img_back addSubview:self.m_lbl_click];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_back mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_img_back.m_margin_top);
        make.bottom.equalTo(self.m_img_sep).offset(-1.);
        make.left.equalTo(self).offset(self.m_model.m_img_back.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_img_back.m_margin_right);
        if (self.m_model.m_img_back.m_height > 0) {
            make.height.equalTo(@(self.m_model.m_img_back.m_height));
        }

    }];

    [_m_img_main mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_img_back).offset(self.m_model.m_img_main.m_margin_top);
//        make.bottom.equalTo(self.m_back).offset(-self.m_model.m_img_main.m_margin_bottom);
        make.centerX.equalTo(self.m_img_back);

        if (self.m_model.m_img_main.m_width > 0) {
            make.width.equalTo(@(self.m_model.m_img_main.m_width));
        }

        if (self.m_model.m_img_main.m_height > 0) {
            make.height.equalTo(@(self.m_model.m_img_main.m_height));
        }
    }];

    [_m_img_front mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_main);
        make.centerX.equalTo(self.m_img_back);

        if (self.m_model.m_img_front.m_width > 0) {
            make.width.equalTo(@(self.m_model.m_img_front.m_width));
        }

        if (self.m_model.m_img_front.m_height > 0) {
            make.height.equalTo(@(self.m_model.m_img_front.m_height));
        }
    }];

    [_m_lbl_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_img_back).offset(self.m_model.m_title_top.m_margin_top);
        make.centerX.equalTo(self.m_img_back);
    }];

    [_m_lbl_click mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_img_back).offset(self.m_model.m_title_click.m_margin_top);
        make.centerX.equalTo(self.m_img_back);

        if (self.m_model.m_title_click.m_width > 0) {
            make.width.equalTo(@(self.m_model.m_title_click.m_width));
        }

        if (self.m_model.m_title_click.m_height > 0) {
            make.height.equalTo(@(self.m_model.m_title_click.m_height));
        }
    }];

    [_m_lbl_bottom mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.m_img_back).offset(-self.m_model.m_title_bottom.m_margin_bottom);
        make.centerX.equalTo(self.m_img_back);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_back.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_bottom);
    }];
}

#pragma mark - 属性
-(CWUBCell_UploadImgWithTitle_S1_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_UploadImgWithTitle_S1_Model new];
    }

    return _m_model;
}

-(CWUBImageViewWithModel *)m_img_back{

    if(!_m_img_back){
        _m_img_back = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_back];

        if (self.m_model.m_img_back.m_isCircle) {
            _m_img_back.layer.cornerRadius = self.m_model.m_img_back.m_width/2.;
            _m_img_back.layer.masksToBounds = YES;
        }
        _m_img_back.userInteractionEnabled = YES;
    }
    return _m_img_back;
}

- (CWUBLabelWithModel *)m_lbl_top{

    if (!_m_lbl_top) {
        _m_lbl_top = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_top];
        _m_lbl_top.textAlignment = NSTextAlignmentCenter;
        _m_lbl_top.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_top.numberOfLines = 0;
    }
    return _m_lbl_top;
}

- (CWUBLabelWithModel *)m_lbl_click{

    if (!_m_lbl_click) {
        _m_lbl_click = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_click];
        _m_lbl_click.textAlignment = NSTextAlignmentCenter;
        _m_lbl_click.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_click.numberOfLines = 0;
        _m_lbl_click.userInteractionEnabled = YES;
        [_m_lbl_click setUserInteractionEnabled:YES];
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_lbl_modify)];
        [_m_lbl_click addGestureRecognizer:tapGesturRecognizer];
    }

    return _m_lbl_click;
}

- (CWUBLabelWithModel *)m_lbl_bottom{

    if (!_m_lbl_bottom) {
        _m_lbl_bottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottom];
        _m_lbl_bottom.textAlignment = NSTextAlignmentCenter;
        _m_lbl_bottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom.numberOfLines = 0;
    }

    return _m_lbl_bottom;
}

-(CWUBImageViewWithModel *)m_img_front{

    if(!_m_img_front){

        _m_img_front = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_front];
        [_m_img_front setUserInteractionEnabled:YES];

        if (self.m_model.m_img_front.m_isCircle) {
            _m_img_front.layer.cornerRadius = self.m_model.m_img_front.m_width/2.;
            _m_img_front.layer.masksToBounds = YES;
        }

        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgFront)];
        [_m_img_front addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_front;
}

-(CWUBImageViewWithModel *)m_img_main{

    if(!_m_img_main){
        _m_img_main = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_front];

        if (self.m_model.m_img_main.m_isCircle) {
            _m_img_main.layer.cornerRadius = self.m_model.m_img_main.m_width/2.;
            _m_img_main.layer.masksToBounds = YES;
        }
    }
    return _m_img_main;
}

- (void) interface_updateWithModel:(CWUBCell_UploadImgWithTitle_S1_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_lbl_top interface_update:model.m_title_top];
    [self.m_lbl_click interface_update:model.m_title_click];
    [self.m_lbl_bottom interface_update:model.m_title_bottom];
    [self.m_img_back interface_update:model.m_img_back];
    [self.m_img_main interface_update:model.m_img_main];
    [self.m_img_front interface_update:model.m_img_front];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }

    [self func_updateConsrtains];

}

#pragma mark - system
- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件
- (void)event_imgFront{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_UploadImgWithTitle_S1_Delegate_ClickCenterImg)]) {

        [self.delegate CWUBCell_UploadImgWithTitle_S1_Delegate_ClickCenterImg];
    }
}

- (void)event_lbl_modify{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_UploadImgWithTitle_S1_Delegate_ClickModify)]) {

        [self.delegate CWUBCell_UploadImgWithTitle_S1_Delegate_ClickModify];
    }
}


#pragma mark - 清除图片消息
- (void)notification_clearImg{

    [self.m_img_front setImage:nil];
}

-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
