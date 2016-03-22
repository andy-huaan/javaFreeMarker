该指令用于导入FreeMarker模板中的所有变量,并将该变量放置在指定的Map对象中。import指令引入时可以定义命名空间，而include则不能
<#import "macro.ftl" as bb />
调用命名空间中的邮箱：${bb.mail}
调用命名空间中的自定义指令：<@bb.greet2 name="赵华安" age="20" sex="男"/>
临时替换命名空间中的变量值：<#assign mail="jsmith@other.com" in bb />  ${bb.mail}

<#assign mail="1036661027@163.com" />
${mail}
