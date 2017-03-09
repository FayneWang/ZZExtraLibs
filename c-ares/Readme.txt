
一、说明

  1、已测试编译版本：v1.12.0

  路径符号：以Readme.txt所在目录为起始，使用相对路径形式“./”表示。

二、构建（build）c-ares

  1、获取c-ares当前库文件（建议使用TortoiesGit,clone较快）
      git clone https://github.com/c-ares/c-ares.git original_repo
	  
  2、切换当前的代码状态特定里程插版本  
      git checkout v1.11.1

  3、打开“Visual Studio Tools”目录，运行命令行编译环境并执行构建（build）脚本：zzBuild.bat。

三、自定义编译修改说明

1、复制“./original_repo/Makefile.msvc”文件为“./zzMakefile.msvc”来进行自定义构建（build）配置。

2、修改了“./zzMakefile.msvc”文件中的以下几个内容：

   a.添加cares库版本号变量“CARES_VERSION”并设置编译的版本号   
   
   b.修改构建（build）运行时库关联变量“RTLIB”值修改为“/MD”,"RTLIBD"值修改为“/MDd”。
   
   c.修改变量“BASE_DIR”值为：“..\$(CARES_VERSION)”
   
   d.修改变量“CARES_DIR”值为：“$(BASE_DIR)”

   e.修改构建（build）目录“lib-release|lib-debug|dll-release|dll-debug”对应为“Release_Lib_MD|Debug_Lib_MD|Release_DLL_MD|Debug_DLL_MD”。

   f.修改库输入目录变量“CARES_OUTDIR”为$(CARES_DIR)\$(CC_VERS_STR)_$(CFG)”，修改obj临日目当前变量“CARES_OBJDIR”为“$(CARES_DIR)\all_objs\$(CC_VERS_STR)_$(CFG)”。
   
   g.删除不使用的构建（build）目标（target）:“acountry”，“adig”，“ahost”。
   
   h.修改自动清除目标(target):clean。清除编译的.obj文件。
   
   h.添加自动清除目标(target): clean_all。清除所有编译文件 。
   
   
