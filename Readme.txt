一、这是本人自己的通用开发库仓库，主要用于自己对第三方库的特定编译需求。
   保留一些特定库的编译脚本的修改说明，和编译好的常用库，方便自己需要时能直接使用。

二、库目录结构和说明

    ZZExtraLibs───┐
                     │
                1.[LibsDir]────────────┐
                     │                            │
                2.Readme.txt                 4.original_repo
                     │                            │
                3.RegForVC.bat               5.v[x.x.x]
			                           │
                                             6.Readme.txt      
                                                   │
                                             7.[zzBuild.bat]
                                                   │
                                             8.[other_files]

             
1.LibsDir:第三方库的构建目录，以直接命名。
2.Readme.txt: 用于说明ZZxtralibs通用内容。
3.RegForVC.bat: 自动化配置脚本，用于任何环境下都不会因为路径原因而需要改变库配置。
4.original_repo: 使用git的[add submodule]命令加入原项目仓库时，创建的目录。
5.v[x.x.x]：存放编译文件的目录，以编译版本为文件名，不同的编译版本，存放不同的目录。
6.Readme.txt：对第三方库的一些编译使用说明。
7.zzBuild.bat:自动化编译脚本，如果方便直接编写原始库自动化编译脚本时，会存在这样的自动化脚本文件。
8.other_files:编译时需要使用到的其他文件。


三、ZZExtraLibs在VS中的自动化配置脚本。

    运行.\RegForVC.bat来配置公共库环境.

