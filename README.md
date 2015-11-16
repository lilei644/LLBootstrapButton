# LLBootstrapButton
Bootstrap 3.0扁平化风格按钮，一句代码调用<br>
&nbsp;&nbsp;以前开发过web端的同学可能用过Twitter公司出的一个前端框架Bootstrap,当时刚接触的时候是2.0的版本，后来是3.0,从立体化的风格到现在扁平化的风格，一直以一种简约大方的设计风格体现，深受开发者的喜爱。本人目前从事Android物联网开发,是一位IOS开发爱好者，所以目前也是出于学习阶段。<br><br>
&nbsp;&nbsp;对于我们这种没有美工妹纸当女票的人来说移动开发就是悲剧，所以后来发现Android开发中也有Bootstrap和BootstrapButton两个框架，显示风格和网页扁平简约的风格一样，我也在开发中用过很多次。于是最近将BootstrapButton部分移植了一个OC版本，以便喜欢这种风格的同学方便使用，维持了原本web端自带的图标字体，可一键调用！！！<br><br>
&nbsp;&nbsp;先上效果图，共6中风格，每种分正常，高亮，不可点击三种状态，也可添加图标<br><br>
   ![image](https://github.com/lilei644/LLBootstrapButton/blob/master/Img/LLBootstrapButton.png)
## 使用方法
### 添加背景效果
```
[button buttonDefault]
```
&nbsp;&nbsp;分为6中风格,默认是可点击<br>
```
[button buttonDefault]              // 默认
[button buttonPrimary]              // 原色
[button buttonSuccess]              // 成功
[button buttonInfo]                 // 消息
[button buttonWarning]              // 警告
[button buttonDanger]               // 危险
```
&nbsp;&nbsp;不可点击为半透明效果<br>
```
[button buttonDefaultEnable:NO]
```
<br><br>
### 添加图标
* 导入字体到项目中<br>
   ![image](https://github.com/lilei644/LLBootstrapButton/blob/master/Img/addfont.png)
* info.plist配置字体<br>  
   ![image](https://github.com/lilei644/LLBootstrapButton/blob/master/Img/add_font2.png)
* 调用方法（根据图标代码选择图标）<br>
```
[button buttonAddIcon:@"fa-apple" isBefore:YES]    // 选择苹果图标，置前
```
* 支持图标可达300多种，符合大部分需求<br>
   ![image](https://github.com/lilei644/LLBootstrapButton/blob/master/Img/fontIcon.png)
&nbsp;&nbsp;图标代码打开资源文件中的htm文件即可显示所有图标<br>
`使用注意：由于图标为文字生成，所以调用前若修改字体大小则需在添加图标前修改`
<br><br>
