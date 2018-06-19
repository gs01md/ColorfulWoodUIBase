# ColorfulWoodUIBase
User Interface Design 

## 1. 目的：该动态库致力于提供一些通用的界面设计，用于快速搭建界面，减少界面开发时间

## 2. 功能介绍

## 2.1. CWUBDefine
提供了常用的一些功能的宏定义：颜色设置、长度换算、常用长度

## 2.2. CWUBViewBase
界面基类：提供一个视图点击代理，以后会扩展tintColor等

## 2.3. CWUBTopLineBottomLine
可以设置视图上下边的颜色，是一个图片视图

## 2.4. CWUBLeftImage
图片位于左侧，上下边距为10，宽度等于高度（适用于高度不太高的视图，高度太高将导致图片过宽）

## 2.5. CWUBLeftImageFollowField
左侧为图片，后面跟一个输入框

## 2.6. CWUBLeftImageFollowTitle
左侧为图片，后面跟一个标题

## 2.7. CWUBLeftImgFollowTitleRightImgHeadTitle
左侧为图片，后面跟一个标题；最右侧有个只是图片，改图片前面有个标签

## 2.8. CWUBCell_MyFollow_MyBusiness

![CWUBCell_MyFollow_MyBusiness图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_MyFollow_MyBusiness.png)

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

## 2.9. CWUBCell_Company_One

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_Company_One.png)

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

## 2.10. CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.png)

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

## 2.11. CWUBCell_ImgCenter_TitleCenter

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgCenter_TitleCenter.png)

CWUBCell_ImgCenter_TitleCenter_Model *model2 = [CWUBCell_ImgCenter_TitleCenter_Model new];

model2.m_type = CWUBCellType_ImgCenter_TitleCenter;

model2.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

model2.m_image = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];

//    model2.m_title.m_margin_top = 24.;

//    model2.m_title.m_margin_bottom = 24.;

model2.m_bottomLineInfo.m_color = [UIColor redColor];

model2.m_bottomLineInfo.m_height = 10.;

## 2.12. CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.png)

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

## 2.13. CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.png)

CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model4 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];

model4.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;

model4.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model4.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model4.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model4.m_bottomLineInfo.m_color = [UIColor blueColor];

model4.m_img_top = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

## 2.14. CWUBCell_Passenger_Delete

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_Passenger_Delete.png)

CWUBCell_Passenger_Delete_Model * model5 = [CWUBCell_Passenger_Delete_Model new];

model5.m_type = CWUBCellType_Passenger_Delete;

model5.m_title_id = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model5.m_info_id = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model5.m_info_name = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model5.m_title_name = [[CWUBTextInfo alloc] initWithText:@"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

model5.m_bottomLineInfo.m_color = [UIColor blueColor];

model5.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

## 2.15. CWUBCell_TitleLeft_ButtonRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_ButtonRight.png)

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

## 2.16. CWUBCell_TitleRight_ButtonRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleRight_ButtonRight.png)

CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];

model.m_type = CWUBCellType_TitleRight_ButtonRight;

model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];

model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];

model.m_event_opt_code = @"查看详情";

model.m_bottomLineInfo.m_color = [UIColor blueColor];


## 2.17. CWUBCell_SevenImg

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_SevenImg.png)

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


## 2.18. CWUBCell_TitleLeft_CollectionRight_ImgRight

![图片](https://github.com/gs01md/ColorfulWoodUIBase/blob/master/Screenshots/CWUBCell_TitleLeft_CollectionRight_ImgRight.png)
<pre><code>

CWUBCell_TitleLeft_CollectionRight_ImgRight_Model * model11 = [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model new];

model11.m_type = CWUBCellType_TitleLeft_CollectionRight_ImgRight;

model11.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];


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

</code></pre>
