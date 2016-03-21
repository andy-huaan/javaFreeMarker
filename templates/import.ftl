该指令用于导入FreeMarker模板中的所有变量,并将该变量放置在指定的Map对象中
<#import "zidingyi.ftl" as bb />
邮箱：${bb.mail}
调用自定义指令：<@bb.greet2 name="赵华安" age="20" sex="男"/>
<#assign mail="1036661027@163.com" />
${mail}
