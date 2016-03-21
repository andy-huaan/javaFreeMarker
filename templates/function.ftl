<#--内置函数调用方式：直接在内容后面?内建函数即可-->
1、日期格式化:${date?string("yyyy-MM-dd HH:mm:ss")}
2、HTML标签处理：${htmlContent?html}
3、获取字符串长度：${content?length}
其它函数：
cap_first:使字符串第一个字母大写 
lower_case:将字符串转换成小写 
upper_case:将字符串转换成大写 
trim:去掉字符串前后的空白字符
int:取得数字的整数部分,结果带符号