1、输出内容：Hello Word ! ${user}

2、定义参数值
<#assign name1="第一个值" name2="第二个值"/>
${name1},${name2}

3、动态定义参数值
<#assign hello="Hello ${name1}!"> 
${hello}

4、相同效果
${"Hello ${user}!"}
${"${user}${user}${user}${user}"}
${"Hello " + user + "!"}
${user + user + user + user}
