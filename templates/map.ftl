1、获取Map中的值
<#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}>
Joe is ${ages.Joe}
2、通过Key遍历Map中的值
<#assign h = {"name":"mouse", "price":50}>
<#list h?keys as key>
	${key} --- ${h[key]}; 
</#list>
------------------------------------------------------------------
3、通过Value遍历值
<#list h?values as value>
	${value}
</#list>
