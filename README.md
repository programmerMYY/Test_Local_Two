
ios app完美国际化解决方案

功能：

    1，实现程序内切换语言，而不是重置系统语言。
    2，对于storyboard 和 xib 中用到的图片切换语言时不会丢失（不同语言公用图片）
    3，支持storyboard 和xib 混用  
    4，更新stroyboard 和xib 后 自动合并.string 文件，不会覆盖掉老数据。
    （xcode默认会覆盖掉旧数据，根据修改后的storyboard或xib重新生成.string文件）

说明： 

      适用于不同语言使用相同图片在 sb 和 xib中。如果想不同语言使用不同图片在sb 和 xib 中的话，还是别折腾了吧。有那功夫还是直接在代码里写吧。


实现过程：

        http://www.cnblogs.com/tangbinblog/p/3972318.html
   
有新需求可以一起交流，改进。。。
