# ColorfulWoodUIBase



## 1. 目的：该框架致力于提供一些通用的界面设计，用于快速搭建界面，减少界面开发时间

界面开发是iOS开发，或者几乎所有程序开发中重要的一环，对于用户来说，这带来很重要的体验；但是，对于开发者来说，界面开发却是最低级和没有价值的任务。而业务逻辑，程序性能更能体现程序的价值。所以，为了节省界面开发的时间，把精力放在更重要的地方，故此开发这套框架。

## 2. 导入说明

使用时，可以直接导入，需要有多个依赖库：
Masonry、
ColorfulWoodCategories、
SDWebImage

也可使用cocoapod
```
pod 'ColorfulWoodUIBase'                    #界面封装
```

## 3. 使用示例

![ColorfulWoodUIBase图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/ColorfulWoodUIBase.gif) 


## 3.1. 该框架的使用重点是CWUBModel

CWUBModel 是一个数组的数组，代表着section及cell。
每个cell对应着一个CWUBModelBase，cell的类型是CWUBCellBase。
CWUBModelBase里面的m_type属性定义了cell的类型，里面的属性定义了布局和内容。

## 3.2. 使用示例工程中的程序简单演示了使用步骤，该框架基本依赖在UITableView中

```
- (UITableView*)m_tableView{

if (!_m_tableView) {

float fLeft   = 0;
float fTop    = 0;
float fWidth  = CWUBDefineSViewControllerWidth;
float fHeight = CWUBDefineSViewControllerHeight;
CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
_m_tableView = [[UITableView alloc] initWithFrame:rect style:UITableViewStylePlain];
_m_tableView.delegate = self;
_m_tableView.dataSource = self;
_m_tableView.allowsSelection = NO;
_m_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
[_m_tableView setBackgroundColor:[UIColor whiteColor]];

//设置cell的估计高度
_m_tableView.estimatedRowHeight = 200;

//iOS以后这句话是默认的，所以可以省略这句话
_m_tableView.rowHeight = UITableViewAutomaticDimension;
}

return _m_tableView;
}
```

## 3.3. 其代理示例如下：
```
#pragma mark - 代理 tableview
/**
* 一成不变，甚至可以放在基类中，不作显示声明
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
NSInteger i = 0;

if (self.m_model && self.m_model.m_array_show) {

if (section<=self.m_model.m_array_show.count-1) {

NSArray *array = self.m_model.m_array_show[section];

if (array) {
i = array.count;
}
}
}

return i;

}

/**
* 一成不变，甚至可以放在基类中，不作显示声明
*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
NSUInteger i = 0;
if (self.m_model && self.m_model.m_array_show) {
i = self.m_model.m_array_show.count;
}

return i;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

NSArray * array =  nil;

if (indexPath.section <= self.m_model.m_array_show.count-1) {
array =self.m_model.m_array_show[indexPath.section];
}

if (array && indexPath.row <= array.count-1) {

CWUBModelBase * model = array[indexPath.row];
CWUBCellBase* cell = (CWUBCellBase*)[model interface_getView:tableView];
[cell interface_updateWithModel:model];

/**
* 代理
*/
if (model.m_type == CWUBCellType_MyFollow_MyBusiness) {
CWUBCell_MyFollow_MyBusiness * cell1 = (CWUBCell_MyFollow_MyBusiness*)cell;
cell1.delegate = self;
//cell1.delegate = self;
}

return cell;

}else{

return [UITableViewCell new];
}

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

CWUBCellBase *cell = (CWUBCellBase *)[tableView cellForRowAtIndexPath:indexPath];
NSString * code = [cell interface_get_event_opt_code];

/**
* cell点击事件
*/
if ([code isEqualToString:@"查看详情"]) {

}
}

```


## 4. 功能介绍

## 4.1. CWUBDefine
提供了常用的一些功能的宏定义：颜色设置、长度换算、常用长度

## 4.2. CWUBViewBase
界面基类：提供一个视图点击代理，以后会扩展tintColor等

## 4.3. CWUBTopLineBottomLine
可以设置视图上下边的颜色，是一个图片视图

## 4.4. CWUBLeftImage
图片位于左侧，上下边距为10，宽度等于高度（适用于高度不太高的视图，高度太高将导致图片过宽）

## 4.5. CWUBLeftImageFollowField
左侧为图片，后面跟一个输入框

## 4.6. CWUBLeftImageFollowTitle
左侧为图片，后面跟一个标题

## 4.7. CWUBLeftImgFollowTitleRightImgHeadTitle
左侧为图片，后面跟一个标题；最右侧有个只是图片，改图片前面有个标签

## 4.8. CWUBCell_MyFollow_MyBusiness

![CWUBCell_MyFollow_MyBusiness图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_MyFollow_MyBusiness.png)
```Objective C
CWUBCell_MyFollow_MyBusiness_Model *model3 = [CWUBCell_MyFollow_MyBusiness_Model new];
model3.m_type = CWUBCellType_MyFollow_MyBusiness;
model3.m_bottomLineInfo.m_color = [UIColor blueColor];
model3.m_bottomLineInfo.m_margin_left = 20.;
model3.m_bottomLineInfo.m_margin_right = 20.;
model3.m_bottomLineInfo.m_height = 10.;
model3.m_title_left_top = [[CWUBTextInfo alloc] initWithText:@"标题左" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model3.m_title_right_top = [[CWUBTextInfo alloc] initWithText:@"标题右" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model3.m_title_right_top.m_margin_right = 40.;
model3.m_title_left_top.m_margin_left = 40.;
model3.m_img_left_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
model3.m_img_right_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
model3.m_title_left_bottom = [[CWUBTextInfo alloc] initWithText:@"我的关注我的关注我的关注我的关注我的关注我的关注" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model3.m_title_right_bottom = [[CWUBTextInfo alloc] initWithText:@"你的" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
```

## 4.9. CWUBCell_Company_One

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_Company_One.png)
```Objective C
CWUBCell_Company_One_Model * model7 = [CWUBCell_Company_One_Model new];
model7.m_type = CWUBCellType_Company_One;
model7.m_img_top = [[CWUBImageInfo alloc] initWithName:@"left" width:60. height:60.];
model7.m_img_top.m_margin_top = 12.;
model7.m_img_top.m_margin_bottom = 40.;
model7.m_img_top.m_isCircle = YES;
model7.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:20] color:CWUBDefineCreate_Color(39,39,39,1)];
model7.m_title_center.m_margin_CenterY = 5.;
model7.m_title_center.m_margin_bottom = 10.;
model7.m_title_center.m_numberOfLines = 1;
model7.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"Hanhan" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
model7.m_title_bottomLeft.m_numberOfLines = 1;
model7.m_back = [[CWUBImageInfo alloc] initWithName:@"companyback" width:0. height:0.];
model7.m_back.m_margin_left = 10.;
model7.m_back.m_margin_right = 10.;
model7.m_back.m_color_background = [UIColor whiteColor];
model7.m_title_bottomCenter = [[CWUBTextInfo alloc] initWithText:@" CEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
model7.m_title_bottomCenter.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
model7.m_img_bottomRight = [[CWUBImageInfo alloc] initWithName:@"button" width:75. height:35.];;
model7.m_title_bottomCenter.m_numberOfLines = 1;
model7.m_title_bottomLeft.m_margin_bottom = 35.;
model7.m_title_bottomLeft.m_margin_top = 10;
```

## 4.10. CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.png)
```Objective C
CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model1 = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
model1.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
model1.m_title_left = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
model1.m_title_right = [[CWUBTextInfo alloc] initWithText:@"内容内" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
model1.m_bottomLineInfo.m_color = [UIColor redColor];
model1.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
model1.m_img_right = [[CWUBImageInfo alloc] initWithName:@"big" width:20. height:12.];
//    model1.m_margin_leftOrRight = 10.;
//    model1.m_bottomLineType = CWUBBottomLineType_right;
//    model1.m_title_left.m_labelTextVerticalType = CWUBLabelTextVerticalType_top;
[data addObject:model1];
```

## 4.11. CWUBCell_ImgCenter_TitleCenter

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgCenter_TitleCenter.png)
```Objective C
CWUBCell_ImgCenter_TitleCenter_Model *model2 = [CWUBCell_ImgCenter_TitleCenter_Model new];
model2.m_type = CWUBCellType_ImgCenter_TitleCenter;
model2.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model2.m_image = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
//    model2.m_title.m_margin_top = 24.;
//    model2.m_title.m_margin_bottom = 24.;
model2.m_bottomLineInfo.m_color = [UIColor redColor];
model2.m_bottomLineInfo.m_height = 10.;
```

## 4.12. CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.png)
```Objective C
CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model * model6 = [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model new];
model6.m_type = CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom;
model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:75. height:75.];
model6.m_img_left.m_margin_top = 40.;
model6.m_img_left.m_margin_bottom = 40.;
model6.m_img_left.m_isCircle = YES;
model6.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
model6.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:@" CEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
model6.m_title_rightTopRight.m_numberOfLines = 1;
model6.m_title_rightTopRight.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
model6.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
model6.m_color_backGround = [UIColor yellowColor];
model6.m_title_rightBottom.m_numberOfLines = 1;
model6.m_title_rightBottom.m_margin_CenterY = 18.;
model6.m_title_rightTopLeft.m_margin_CenterY = -15.;
model6.m_bottomLineInfo.m_height = 20.;
model6.m_bottomLineInfo.m_color = [UIColor redColor];
model6.m_bottomLineInfo.m_margin_right = 0.1;
model6.m_bottomLineInfo.m_margin_left = 0.1;
```

## 4.13. CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.png)
```Objective C
CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model4 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
model4.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
model4.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model4.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model4.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model4.m_bottomLineInfo.m_color = [UIColor blueColor];
model4.m_img_top = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];
```

## 4.14. CWUBCell_Passenger_Delete

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_Passenger_Delete.png)
```Objective C
CWUBCell_Passenger_Delete_Model * model5 = [CWUBCell_Passenger_Delete_Model new];
model5.m_type = CWUBCellType_Passenger_Delete;
model5.m_title_id = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model5.m_info_id = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model5.m_info_name = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model5.m_title_name = [[CWUBTextInfo alloc] initWithText:@"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model5.m_bottomLineInfo.m_color = [UIColor blueColor];
model5.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];
```

## 4.15. CWUBCell_TitleLeft_ButtonRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_ButtonRight.png)
```Objective C
CWUBCell_TitleLeft_ButtonRight_Model *model = [CWUBCell_TitleLeft_ButtonRight_Model new];

model.m_type = CWUBCellType_TitleLeft_ButtonRight;
model.m_bottomLineInfo.m_color = [UIColor redColor];
model.m_bottomLineInfo.m_margin_left = 60.;
model.m_bottomLineInfo.m_margin_right = 20.;
model.m_bottomLineInfo.m_margin_top = 20.;
model.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model.m_title.m_margin_left = 50.;
model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];
model.m_btnImg.m_margin_right = 50.;
model.m_btnImg.m_margin_top = 24.;
model.m_btnImg.m_margin_bottom = 24.;
model.m_title.m_margin_top = 24.;
model.m_title.m_margin_bottom = 24.;
model.m_bottomLineInfo.m_height = 1.;

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_ButtonRight2.png)
CWUBCell_TitleLeft_ButtonRight_Model * model3 = [CWUBCell_TitleLeft_ButtonRight_Model new];
model3.m_type = CWUBCellType_TitleLeft_ButtonRight;
model3.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
model3.m_bottomLineInfo.m_color = [UIColor blueColor];
model3.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];
```
## 4.16. CWUBCell_TitleRight_ButtonRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleRight_ButtonRight.png)
```Objective C
CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
model.m_type = CWUBCellType_TitleRight_ButtonRight;
model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
model.m_event_opt_code = @"查看详情";
model.m_bottomLineInfo.m_color = [UIColor blueColor];

```

## 4.17. CWUBCell_SevenImg

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_SevenImg.png)
```Objective C
CWUBCell_SevenImg_Model * model12 = [CWUBCell_SevenImg_Model new];
model12.m_type = CWUBCellType_SevenImg;
model12.m_img_one = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
model12.m_img_two = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
model12.m_img_three = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
model12.m_img_three.m_margin_right = CWUBDefine_Width(53.);
model12.m_img_one.m_margin_left = CWUBDefine_Width(53.);
model12.m_title_one.m_height = 2.;
model12.m_title_one.m_color_backGroud = [UIColor blueColor];
model12.m_title_one.m_margin_left = 0.01;
model12.m_title_four.m_margin_right = 0.01;
model12.m_title_four.m_margin_left = CWUBDefine_Width(5.);
model12.m_title_one.m_margin_right = CWUBDefine_Width(5.);
model12.m_title_two.m_margin_left = CWUBDefine_Width(5.);
model12.m_title_two.m_margin_right = CWUBDefine_Width(5.);
model12.m_title_three.m_margin_left = CWUBDefine_Width(5.);
model12.m_title_three.m_margin_right = CWUBDefine_Width(5.);

[data addObject:model12];

```
## 4.18. CWUBCell_TitleLeft_CollectionRight_ImgRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_CollectionRight_ImgRight.png)
```javascript
CWUBCell_TitleLeft_CollectionRight_ImgRight_Model * model11 = [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model new];

model11.m_type = CWUBCellType_TitleLeft_CollectionRight_ImgRight;

model11.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

/**
* 右侧的提示文字
*/
model11.m_title_right = [[CWUBTextInfo alloc] initWithText:@"请选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
/**
* 右侧下部的提示文字
*/
model11.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"请选择行业2" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];


[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空航空航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空航空航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];

[model11.m_collection_right.m_array addObject:[[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:[[CWUBTextInfo alloc] initWithText:@"航空" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]] img:[[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10]]];


model11.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];

model11.m_bottomLineInfo.m_color = [UIColor redColor];

[data addObject:model11];

//涉及到删除，需要刷新两次，才能及时更新高度
/**
* 返回选择的行，外面重设tableview的数据，然后刷新该界面
*/
- (void)CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate_constrains:(long)index{

if (index<0) {
return;
}

NSArray * array = self.m_model.m_array_show[0];

for (CWUBModelBase *temp in array) {
if (temp.m_type == CWUBCellType_TitleLeft_CollectionRight_ImgRight) {
CWUBCell_TitleLeft_CollectionRight_ImgRight_Model* model = (CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*)temp;
[model.m_collection_right.m_array removeObjectAtIndex:index];
}
}

[self.m_tableView reloadData];

[self performSelector:@selector(func_reload) withObject:nil afterDelay:0.1];

}

- (void)func_reload{
[self.m_tableView reloadData];
}


```

## 4.19. CWUBCell_TitleTop_TitleBottom

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleTop_TitleBottom.png)
```Objective C

CWUBCell_TitleTop_TitleBottom_Model * model15 = [CWUBCell_TitleTop_TitleBottom_Model new];
model15.m_type = CWUBCellType_TitleTop_TitleBottom;

model15.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
model15.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
model15.m_bottomLineInfo.m_color = [UIColor redColor];
[data addObject:model15];
```

## 4.20. CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.png)
```Objective C

CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model * model14 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model new];
model14.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight;

model14.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
model14.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
model14.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model14.m_input_right.m_textPlaceholder = @"请输入内容";
model14.m_input_right.m_margin_bottom = 20.;
model14.m_input_right.m_margin_top = 20.;
model14.m_title_bottomRight.m_margin_bottom = 1.;
model14.m_title_left.m_width = [model14.m_title_left interface_setWidthByContent];
model14.m_bottomLineInfo.m_color = [UIColor blueColor];
model14.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
[data addObject:model14];

```

## 4.21. CWUBCell_TitleLeft_InputRight_TitleRightBottom

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_InputRight_TitleRightBottom.png)
```Objective C

CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model * model13 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model new];
model13.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom;

model13.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
model13.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
model13.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
model13.m_input_right.m_textPlaceholder = @"请输入内容";
model13.m_input_right.m_margin_bottom = 20.;
model13.m_input_right.m_margin_top = 20.;
model13.m_title_bottomRight.m_margin_bottom = 1.;
model13.m_title_left.m_width = [model13.m_title_left interface_setWidthByContent];
model13.m_bottomLineInfo.m_color = [UIColor blueColor];
[data addObject:model13];
```
## 4.22. CWUBCell_ImgBack_TitleFront

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgBack_TitleFront.png)
```Objective C
CWUBCell_ImgBack_TitleFront_Model * model16 = [CWUBCell_ImgBack_TitleFront_Model new];
model16.m_type = CWUBCellType_ImgBack_TitleFront;

model16.m_title = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
model16.m_image.m_imgName = @"button";
model16.m_image.m_height = 100;
model16.m_image.m_contentMode = UIViewContentModeScaleToFill;
model16.m_bottomLineInfo.m_color = [UIColor redColor];
model16.m_image.m_isClipToBounds = YES;
model16.m_title.m_margin_CenterY = -25.;
[data addObject:model16];
```

## 4.23. CWUBCell_TitleCenter

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleCenter.png)
```Objective C
CWUBCell_TitleCenter_Model *model17 = [CWUBCell_TitleCenter_Model new];
model17.m_type = CWUBCellType_TitleCenter;
model17.m_title.m_margin_top = 1.;
model17.m_title.m_margin_bottom = 1.;
model17.m_title.m_text = @"*资料认证未通过，点击进入修改";
model17.m_title.m_color = [UIColor redColor];
model17.m_title.m_color_backGroud = [UIColor blueColor];
model17.m_bottomLineInfo.m_image = @"line";
model17.m_title.m_height = 50.;
model17.m_color_backGround = [UIColor redColor];
model17.m_title.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
[data addObject:model17];
```

## 4.24. CWUBCell_Carousel

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_Carousel.gif)
```Objective C
CWUBCell_Carousel_Model * modelCarousel = (CWUBCell_Carousel_Model*)[CWUBCell_Carousel_Model tester_data];
[data addObject:modelCarousel];

+ (CWUBCell_Carousel_Model*)tester_data{

CWUBCell_Carousel_Model *model = [CWUBCell_Carousel_Model new];
model.m_type = CWUBCellType_Carousel;
model.m_bottomLineInfo.m_color = [UIColor blueColor];

CWUBCell_Carousel_Single_Model *single = [CWUBCell_Carousel_Single_Model new];
CWUBTextInfo *info = [[CWUBTextInfo alloc] initWithText:@"北京CSDR公司" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
CWUBTextInfo *info1 = [[CWUBTextInfo alloc] initWithText:@"智能识别系统" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
CWUBTextInfo *info2 = [[CWUBTextInfo alloc] initWithText:@"购买成功" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
info.m_margin_left = 5.;
info1.m_margin_left = 5.;
info2.m_margin_left = 5.;
CWUBImageInfo *img = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];
img.m_margin_left = 20.;
[single.m_array addObject:img];
[single.m_array addObject:info];
[single.m_array addObject:info1];
[single.m_array addObject:info2];

[model.m_array addObject:single];
[model.m_array addObject:single];
[model.m_array addObject:single];


return model;
}
```
