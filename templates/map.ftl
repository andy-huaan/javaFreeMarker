1、获取Map中的值
<#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}>
Joe is ${ages.Joe}
2、遍历Map中的值
<#assign h = {"name":"mouse", "price":50}>
<#list h?keys as key>
	${key} --- ${h[key]}; 
</#list>
