
一、说明

  1、已测试编译版本：v1.2.8，v1.2.11
  
  2、路径符号：以Readme.txt所在目录为起始，使用相对路径形式“./”表示。


二、构建（build）zlib

  1、获取二、构建（build）zlib当前库文件（建议使用TortoiesGit,clone较快）
      git clone https://github.com/madler/zlib.git original_repo
	  
  2、切换当前的代码状态特定里程插版本，如下
      git checkout v1.2.11
	  
  3、修改zzBuild.bat脚本变量“ZlibVersion”为要编译的版本号
	  
  4、打开“Visual Studio Tools”目录，运行命令行编译环境并执行构建（build）脚本：zzBuild.bat。

三、自定义编译修改说明

   1、修改“Makefile.msc”编译配置
   
       a.复制“./win32/Makefile.msc”到“./zzMakefile.msc”。
	   
	   b.修改编译选项变量“LOC”值为“-DASMV -DASMINF”
	   
	   c.增加编译输出目录变量“BUILD_DIR”。
	   
	   b.修改编译库生成路径变量“STATICLIB”，“SHAREDLIB”，“IMPLIB”
	   
	   d.添加清除临时文件目标“clean_objs”，清除*.obj,zlib.pdb,zlib1.res
	   
	2、“./zzMakefile_debug.msc”在“./zzMakefile.msc”的基础之上的修改
	
	    a.修改CFLAGS的参数：-MD改为-MDd，-O2改为-Od
		
		b.添加WFLAGS的参数：-D_DEBUG
		
		c.修改参数LDFLAGS值为：-nologo -debug
   
   
