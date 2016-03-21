switch , case , default , break指令,作用类似于Java的switch语句,switch指令的语法结构如下:
switch可用于字符串和数字
<#switch age> 
	<#case 10>
  		值为10
		<#break/> 
	<#case 12>
		值为 12
		<#break/> 
	<#default>
		无匹配项，默认值
</#switch>