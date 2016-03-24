<#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}>

1、是否是字符串：<#if user?is_string>是<#else>否</#if>
2、是否是数字：<#if age?is_number>是<#else>否</#if>
3、是否是布尔值：<#if married?is_boolean>是<#else>否</#if>
4、是否是日期类型：<#if date?is_date>是<#else>否</#if>
5、是否是哈希表：<#if ages?is_hash>是<#else>否</#if>
6、是否是序列：<#if userList?is_sequence>是<#else>否</#if>