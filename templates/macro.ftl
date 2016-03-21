<#--自定义指令宏是一个模板片段与变量相关联。你可以使用定义的指令，可以帮助你多次使用-->

<#--1、无参数-->
<#macro greet>
 <font size=’+2’>HelloW Joe!</font>
</#macro>

<#--调用自定义的无参指令-->
<@greet/>


<#--2、有参数-->
<#macro greet2 name age sex>
 <font  size=’+2’>Hello ${name},年龄:${age},性别：${sex}</font>
</#macro>

<#--调用自定义的有参指令-->
<@greet2 name="赵华安" age="20" sex="男"></@greet2>

<#--3、定义变量-->
<#assign mail="zhaohuaan0925@163.com" />