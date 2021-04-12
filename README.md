# 内存马注入

**环境：**

tomcat8.5（其他版本也可以）

java8

**1.filter类型**

1.1将filter.jsp文件放到tomcat根目录下，通过浏览器访问，可创建内存马。

1.2任意路径访问，添加参数cmd= whoami，即可。

**2. servlet类型**

2.1将servlet.jsp文件放到tomcat根目录下，通过浏览器访问，可创建内存马。

2.2访问/RockS?cmd=whoami。即可。

**3.listener类型**

3.1将listener.jsp文件放到tomcat根目录下，通过浏览器访问，可创建内存马。

3.2任意路径访问，添加参数cmd= whoami，即可。

**4.tomcat.jsp**

提供内存马检测功能。

