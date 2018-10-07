//
//  CWUBCell_TitleLeft_CollectionRight_ImgRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_CollectionRight_ImgRight.h"
#import "CWUBView_TitleLeft_ButtonRight.h"

@interface CWUBCell_TitleLeft_CollectionRight_ImgRight()<
UICollectionViewDelegate,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) UICollectionView *m_collection_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_right;


@end

@implementation CWUBCell_TitleLeft_CollectionRight_ImgRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self func_initWithSubViews];
    }

    return self;
}

- (void) func_updateConstrains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_collection_right.mas_left).offset(-self.m_model.m_title_left.m_margin_right);
        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        if (self.m_model.m_title_left.m_width > 0.01) {
            make.width.equalTo(@(self.m_model.m_title_left.m_width));
        }
    }];

    [_m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_left);
        make.right.equalTo(self).offset(-self.m_model.m_img_right.m_margin_right);
        make.width.equalTo(@(self.m_model.m_img_right.m_width));
        make.height.equalTo(@(self.m_model.m_img_right.m_height));
    }];

    [_m_collection_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_collection_right.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_collection_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_collection_right.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_collection_right.m_margin_left);

        float height = self.m_collection_right.collectionViewLayout.collectionViewContentSize.height;
        if (height>20) {
            make.height.equalTo(@(height));
        }else{
            make.height.equalTo(@(20));
        }
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_collection_right);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_title_right.m_margin_left);
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_title_right.m_margin_right);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_rightBottom.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_rightBottom.m_margin_left);
        make.right.equalTo(self.m_collection_right);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_collection_right.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_collection_right];
    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_sep];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_lbl_rightBottom];

    [self func_updateConstrains];

}

-(CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_left];
        _m_lbl_left.textAlignment = NSTextAlignmentLeft;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {
        _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_right];
        _m_lbl_right.textAlignment = NSTextAlignmentRight;
        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;
    }
    return _m_lbl_right;
}

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_rightBottom];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentRight;
        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightBottom.numberOfLines = 0;
    }
    return _m_lbl_rightBottom;
}

- (UICollectionView *)m_collection_right{

    if (!_m_collection_right) {

        CWUBCollectionFlowLayout *layout = self.m_model.m_collection_right.m_layout;

        float width = [[UIScreen mainScreen] bounds].size.width;
        width -= self.m_model.m_title_left.m_margin_left*2;
        width -= [self fun_getWidth:self.m_model.m_title_left.m_text font:self.m_lbl_left.font];
        width -= self.m_model.m_img_right.m_width;
        width -= self.m_model.m_img_right.m_margin_right*2;

        float fLeft   = 0;
        float fTop    = 0;
        float fWidth  = width;
        float fHeight = 1;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_collection_right = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:layout];
        _m_collection_right.delegate = self;
        _m_collection_right.dataSource = self;
        _m_collection_right.backgroundColor = self.m_model.m_color_backGround;
        [_m_collection_right registerClass:[CWUBView_TitleLeft_ButtonRight class] forCellWithReuseIdentifier:@"CWUBCell_TitleLeft_CollectionRight_ImgRight_CellID"];

    }
    return _m_collection_right;
}

-(UIImageView *)m_img_right{

    if(!_m_img_right){
        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];
        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_right.clipsToBounds = YES;
        [_m_img_right setClipsToBounds:YES];
    }
    return _m_img_right;
}

#pragma mark - 接口
- (void) interface_updateWithModel:(CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self.m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];

    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_right interface_update:model.m_title_right];
    [self.m_lbl_rightBottom interface_update:model.m_title_rightBottom];

    self.backgroundColor = self.m_model.m_color_backGround;
    [self.m_collection_right reloadData];

    if ([self.m_model.m_collection_right.m_canUserInteract intValue] == 1) {
        self.m_collection_right.userInteractionEnabled = YES;
    }else{
        self.m_collection_right.userInteractionEnabled = NO;
    }

    [self func_updateConstrains];

}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - collection 代理

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.m_model.m_collection_right.m_array.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    CWUBView_TitleLeft_ButtonRight *cell = (CWUBView_TitleLeft_ButtonRight *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CWUBCell_TitleLeft_CollectionRight_ImgRight_CellID" forIndexPath:indexPath];

    if (!cell) {
        cell = [CWUBView_TitleLeft_ButtonRight new];
    }

    CWUBView_TitleLeft_ButtonRight_Model *model = [self.m_model.m_collection_right.m_array objectAtIndex:indexPath.row];

    [cell interface_updateWithModel:model];

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{

    [self func_updateConstrains];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate_constrains:)]) {

        [self.delegate CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate_constrains:indexPath.row];
    }
}

#pragma mark - UICollectionViewFlowLayoutDelegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CWUBView_TitleLeft_ButtonRight_Model *model = [self.m_model.m_collection_right.m_array objectAtIndex:indexPath.row];
    CGSize size = [self func_getSize:model.m_title.m_text];
    size.width += model.m_img.m_width;

    size = [self func_getSizeWithModel:model.m_title];

    NSLog(@" %f; %f",size.width,size.height);

    return size;
}

- (CGSize)func_getSize:(NSString *)str{
    UILabel * label = [UILabel new];
    UIFont * font = label.font;
    NSDictionary *attrs=@{NSFontAttributeName:font};
    CGSize mySize=[str sizeWithAttributes:attrs];

    return mySize;
}

- (float)fun_getWidth:(NSString *)str font:(UIFont*)font{

    NSDictionary *attrs=@{NSFontAttributeName:font};
    CGSize mySize=[str sizeWithAttributes:attrs];
    return mySize.width;
}

- (CGSize)func_getSizeWithModel:(CWUBTextInfo*)model{

    NSDictionary *attrs=@{NSFontAttributeName:model.m_font};
    CGSize mySize=[model.m_text sizeWithAttributes:attrs];
    //mySize.height += 10.;

    /**
     * 整个CollectionView的宽度
     */
    float width = [[UIScreen mainScreen] bounds].size.width;
    width -= self.m_model.m_title_left.m_margin_left;
    width -= [self fun_getWidth:self.m_model.m_title_left.m_text font:self.m_lbl_left.font];
    width -= self.m_model.m_collection_right.m_margin_left;
    width -= self.m_model.m_collection_right.m_margin_right;
    width -= self.m_model.m_img_right.m_width;
    width -= self.m_model.m_img_right.m_margin_right;

    /**
     * 文本框的最大宽度，需要减去图片和间距
     */
    float widthText = width;
    if(self.m_model.m_collection_right.m_array>0){
        CWUBView_TitleLeft_ButtonRight_Model *info = (CWUBView_TitleLeft_ButtonRight_Model*)self.m_model.m_collection_right.m_array[0];
        if(info.m_img.m_width >1){
            widthText -= info.m_img.m_width;
            widthText -= info.m_title.m_margin_right;

        }
        mySize.width += info.m_title.m_margin_left;
        mySize.width += info.m_title.m_margin_right;
        if(info.m_img.m_width >1){
            mySize.width += info.m_img.m_width;
            mySize.width += info.m_img.m_margin_right;
        }

        mySize.width += 8;//为了减去inset

    }

    if (mySize.width > widthText) {
        mySize.height = ceil(mySize.width/widthText) * mySize.height;
        mySize.width = width;
    }

    mySize.height += 15.;

    return mySize;
}

#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
