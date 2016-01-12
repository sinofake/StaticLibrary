# StaticLibrary
静态库制作

- armv7
    - iPhone4
    - iPhone4S
- armv7s
    - iPhone5
    - iPhone5C
- arm64
    - iPhone5S 及更新机型

<http://blog.csdn.net/lizhongfu2013/article/details/9197191>[感谢这位博主]


1.创建一个工程，在该工程中加入一个子静态库工程

2.选中静态库的TARGETS, 在Architectures中加入arm7s；<p>
   Build Active Architecture Only设成NO；<p>
   将scheme改成release模式；<p>
   将最低兼容版本调低；<p>
   在Build Phases 的 Copy Files中加入静态库的.h文件<p>

3.在主工程中的Build Phases 的 Link Binary With Libraries 中导入静态库.a 文件；
   新建一个名为lib 的 Group, 然后把静态库中的接口.h文件，以引用的形式拖拽到lib文件夹中;
   现在就可以测试静态库了，如果静态库有用到类别，则在主工程中加入-ObjC指令，如果类别
   写在了.m文件中，则需加-all_load指令。

lipo -create /Users/你的用户名/Desktop/libxxx.armv7.a /Users/你的用户名/Desktop/libxxx.armv7s.a /Users/你的用户名/Desktop/libxxx.i386.a -output /Users/你的用户名/Desktop/libxxx.a

查看所支持的架构：lipo -info libxxx.a