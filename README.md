# ColorfulWoodUIBase
User Interface Design 

1. 目的：该动态库致力于提供一些通用的界面设计，用于快速搭建界面，减少界面开发时间

2. 功能介绍

2.1. CWUBDefine
提供了常用的一些功能的宏定义：颜色设置、长度换算、常用长度

2.2. CWUBViewBase
界面基类：提供一个视图点击代理，以后会扩展tintColor等

2.3. CWUBTopLineBottomLine
可以设置视图上下边的颜色，是一个图片视图

2.4. CWUBLeftImage
图片位于左侧，上下边距为10，宽度等于高度（适用于高度不太高的视图，高度太高将导致图片过宽）

2.5. CWUBLeftImageFollowField
左侧为图片，后面跟一个输入框

2.6. CWUBLeftImageFollowTitle
左侧为图片，后面跟一个标题

2.7. CWUBLeftImgFollowTitleRightImgHeadTitle
左侧为图片，后面跟一个标题；最右侧有个只是图片，改图片前面有个标签
