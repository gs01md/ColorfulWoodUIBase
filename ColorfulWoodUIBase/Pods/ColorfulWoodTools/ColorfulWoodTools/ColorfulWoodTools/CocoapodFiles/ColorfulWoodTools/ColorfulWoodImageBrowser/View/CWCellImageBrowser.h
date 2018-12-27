//
//  CWCellImageBrowser.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/12/24.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWCellImageBrowser : UICollectionViewCell
@property (nonatomic, strong)UIImageView *m_pictureImageView;

@property (nonatomic, copy)void (^block_tapImage)(void);
@end

NS_ASSUME_NONNULL_END
