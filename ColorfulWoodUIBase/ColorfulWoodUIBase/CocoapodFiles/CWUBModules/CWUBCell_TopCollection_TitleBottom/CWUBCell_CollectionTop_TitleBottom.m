//
//  CWUBCell_Collection.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_CollectionTop_TitleBottom.h"
#import "CWUBView_TitleLeft_ButtonRight.h"

@interface CWUBCell_CollectionTop_TitleBottom()<
UICollectionViewDelegate,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *m_collection_top;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_CollectionTop_TitleBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_CollectionTop_TitleBottom_Model*)model{

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

- (void) func_updateConstrains{

    [_m_collection_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_collection_top.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_collection_top.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_collection_top.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_collection_top.m_margin_bottom);

        float height = self.m_collection_top.collectionViewLayout.collectionViewContentSize.height;
        if (height>20) {
            make.height.equalTo(@(height));
        }else{
            make.height.equalTo(@(20));
        }
    }];

    [_m_lbl_bottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottom.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_bottom.m_margin_left);
        make.right.equalTo(self.m_collection_top);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_collection_top.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

- (void) initWithSubViews{

    [self addSubview:self.m_collection_top];
    [self addSubview:self.m_img_sep];
    [self addSubview:self.m_lbl_bottom];

    [self func_updateConstrains];

}

-(CWUBCell_CollectionTop_TitleBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_CollectionTop_TitleBottom_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_bottom{

    if (!_m_lbl_bottom) {
        _m_lbl_bottom = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom];
        _m_lbl_bottom.textAlignment = NSTextAlignmentRight;
        _m_lbl_bottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom.numberOfLines = 0;
    }
    return _m_lbl_bottom;
}

- (UICollectionView *)m_collection_top{

    if (!_m_collection_top) {

        CWUBCollectionFlowLayout *layout = self.m_model.m_collection_top.m_layout;

        float width = [[UIScreen mainScreen] bounds].size.width;
        width -= self.m_model.m_collection_top.m_margin_left;
        width -= self.m_model.m_collection_top.m_margin_right;

        //layout.estimatedItemSize = CGSizeMake(width, 200);
        layout.minimumLineSpacing = 15.;
        layout.minimumInteritemSpacing= 15.;
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        float fLeft   = 0;
        float fTop    = 0;
        float fWidth  = width;
        float fHeight = 1;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_collection_top = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:layout];
        _m_collection_top.delegate = self;
        _m_collection_top.dataSource = self;
        _m_collection_top.backgroundColor = self.m_model.m_color_backGround;
        [_m_collection_top registerClass:[CWUBView_TitleLeft_ButtonRight class] forCellWithReuseIdentifier:@"CWUBCell_CollectionTop_TitleBottom"];

    }
    return _m_collection_top;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

#pragma mark - 接口
- (void) interface_updateWithModel:(CWUBCell_CollectionTop_TitleBottom_Model*)model{

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

    [self.m_lbl_bottom interface_update:model.m_title_bottom];

    self.backgroundColor = self.m_model.m_color_backGround;
    [self.m_collection_top reloadData];

    [self func_updateConstrains];

    if ([self.m_model.m_collection_top.m_canUserInteract intValue] == 1) {
        self.m_collection_top.userInteractionEnabled = YES;
    }else{
        self.m_collection_top.userInteractionEnabled = NO;
    }

}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - collection 代理

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.m_model.m_collection_top.m_array.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    CWUBView_TitleLeft_ButtonRight *cell = (CWUBView_TitleLeft_ButtonRight *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CWUBCell_CollectionTop_TitleBottom" forIndexPath:indexPath];

    if (!cell) {
        cell = [CWUBView_TitleLeft_ButtonRight new];
    }

    CWUBView_TitleLeft_ButtonRight_Model *model = [self.m_model.m_collection_top.m_array objectAtIndex:indexPath.row];

    [cell interface_updateWithModel:model];

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{

    [self func_updateConstrains];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_CollectionTop_TitleBottom_Delegate_constrains:)]) {

        [self.delegate CWUBCell_CollectionTop_TitleBottom_Delegate_constrains:indexPath.row];
    }
}

#pragma mark - UICollectionViewFlowLayoutDelegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {

    CWUBView_TitleLeft_ButtonRight_Model *model = [self.m_model.m_collection_top.m_array objectAtIndex:indexPath.row];

    CGSize size = [self func_getSizeWithModel:model.m_title];

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

    /**
     * 整个collection的宽度
     */
    float width = [[UIScreen mainScreen] bounds].size.width;
    width -= self.m_model.m_collection_top.m_margin_left;
    width -= self.m_model.m_collection_top.m_margin_right;

    /**
     * 文本框的最大宽度，需要减去图片和间距
     */
    float widthText = width;

    if(self.m_model.m_collection_top.m_array>0){
        CWUBView_TitleLeft_ButtonRight_Model *info = (CWUBView_TitleLeft_ButtonRight_Model*)self.m_model.m_collection_top.m_array[0];
        widthText -= info.m_img.m_width;
        widthText -= info.m_title.m_margin_right;
        mySize.width += info.m_title.m_margin_left;
        mySize.width += info.m_title.m_margin_right;
        mySize.width += info.m_img.m_width;
        mySize.width += info.m_img.m_margin_right;
        mySize.width += 8;//为了减去inset

    }

    /**
     * 宽度超出一行，则计算换行后的高度
     */
    if (mySize.width > widthText) {
        mySize.height = ceil(mySize.width/widthText) * mySize.height;;
        mySize.width = width;

    }

    mySize.height += 15.;

    return mySize;
}

#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

