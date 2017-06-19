# WLBallView
OC - 物理仿真行为(小球滚动)

原理解析博文地址：
http://www.jianshu.com/p/883d042178fa

![image](https://raw.githubusercontent.com/wangliujiayou/WLBallView/master/Untitled.gif)

## 框架使用
1.导入 `#import "WLBallView.h"`

2.创建`WLBallView`控件

3.调用`WLBallView`方法即可实现

```
// 创建控件
WLBallView * ballView = [[WLBallView alloc] initWithFrame:CGRectMake(0, 80, 50, 50) AndImageName:self.array[arc4random_uniform(4)]];
// 添加父视图(边界视图)
[self.view addSubview:ballView];
// 开始执行
[ballView starMotion];
```
