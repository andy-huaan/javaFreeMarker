(1)自定义固定参数函数：
<#function avg x y>
	<#return (x+y)/2 />
</#function>
(2)调用自定义固定参数函数：${avg(10,20)}
-----------------------------------------------
(3)自定义非固定参数函数：
<#function avg2 nums...>
	<#local sum = 0 />
	<#list nums as num>
		<#local sum = sum + num />
	</#list>
	<#if nums?size != 0>
		<#return sum / (nums?size) />
	<#else>
	    <#return "无参数" />
	</#if>
</#function>
调用自定义非固定参数函数：${avg2(10,20)}--${avg2(10,20,30)}--${avg2()!"N/A"}
注意：如果函数没有显示声明返回值，那么方法的返回值就是未定义变量