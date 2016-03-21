语法 
<# include filename> 
or 
<# include filename options>
options包含两个属性 
encoding="GBK" 编码格式 
parse=true 是否作为ftl语法解析,默认是true，false就是以文本方式引入.注意在ftl文件里布尔值都是直接赋值的如parse=true,而不是parse=”true” 

被包含的文件中的内容如下：
<#include "txt/a.txt" />