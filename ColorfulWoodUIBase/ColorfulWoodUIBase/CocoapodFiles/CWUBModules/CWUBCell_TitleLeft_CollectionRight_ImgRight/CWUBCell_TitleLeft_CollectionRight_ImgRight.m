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
@property (nonatomic, strong) UIImageView * m_img_right;
@property (nonatomic, strong) UIImageView * m_img_sep;

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
        [self initWithSubViews];
    }

    return self;
}

- (void) func_update{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_collection_right.mas_left).offset(-self.m_model.m_title_left.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_title_left.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
    }];

    [_m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_left);
        make.left.equalTo(self.m_collection_right.mas_right).offset(self.m_model.m_img_right.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_img_right.m_margin_right);
        make.width.equalTo(@(self.m_model.m_img_right.m_width));
        make.height.equalTo(@(self.m_model.m_img_right.m_height));
    }];

    [_m_collection_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_collection_right.m_margin_right);
        make.top.equalTo(self.m_lbl_left);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_collection_right.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_collection_right.m_margin_left);

        float height = self.m_collection_right.collectionViewLayout.collectionViewContentSize.height;
        if (height>20) {
            make.height.equalTo(@(height));
        }else{
            make.height.equalTo(@(20));
        }
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_collection_right.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_collection_right];
    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_sep];

    [self func_update];

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

- (UICollectionView *)m_collection_right{

    if (!_m_collection_right) {

        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];

        float width = [[UIScreen mainScreen] bounds].size.width;
        width -= self.m_model.m_title_left.m_margin_left*2;
        width -= [self fun_getWidth:self.m_model.m_title_left.m_text font:self.m_lbl_left.font];
        width -= self.m_model.m_img_right.m_width;
        width -= self.m_model.m_img_right.m_margin_right*2;

        //layout.estimatedItemSize = CGSizeMake(width, 200);
        layout.minimumLineSpacing = 15.;
        layout.minimumInteritemSpacing= 15.;
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        float fLeft   = 0;
        float fTop    = 0;
        float fWidth  = width;
        float fHeight = 1;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_collection_right = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:layout];
        _m_collection_right.delegate = self;
        _m_collection_right.dataSource = self;
        _m_collection_right.backgroundColor = [UIColor yellowColor];
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

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

#pragma mark - 接口
- (void) interface_updateWithModel:(CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

    [self.m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];

    [self.m_lbl_left interface_update:model.m_title_left];

    [self.m_collection_right reloadData];
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

    [self func_update];
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

#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end