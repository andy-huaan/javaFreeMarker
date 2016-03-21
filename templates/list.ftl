1、简单遍历list:
<#list userList as user>
  用户名：${user.name}
  性    别: ${user.sex}
</#list>

2、Freemarker遍历list并应用list隐含变量item_index
<#list userList as user>
  第${user_index+1}个用户
  用户名：${user.name}
  性    别: ${user.sex}
</#list>

3、Freemarker遍历list并应用list隐含变量item_has_next
<#list userList as user>
 用户名：${user.name}
 性    别: ${user.sex}
<#if !user_has_next>
      共有${userList?size}最后一个用户是:${user.name}
</#if>
</#list>

4、Freemarker遍历list并按用户年龄降序排序
<#list userList?sort_by("age")?reverse as user> <#--默认升序排序-->
  用户名：${user.name}
  性    别: ${user.sex}
  年    龄: ${user.age}
</#list>

5、Freemarker遍历list当用户年龄等于10岁时，停止输出
<#list userList?sort_by("age") as user>
  用户名：${user.name}
  年  龄: ${user.age}
  <#if user.age=10 >
    <#break/>
  </#if>
</#list>

6、序列的连接可以使用+号来进行，但要注意不要在很多重复连接时使用序列连接操作
<#list ["Joe", "Fred"] + ["Julia", "Kate"] as user>
 -${user}
</#list>

7、
<#assign uploadFileName="aaa;bbb;ccc">
<#list uploadFileName?split(";") as fileName>  
   ${fileName}------------${fileName_index+1}
</#list>  

7、序列切分
使用[firstindex..lastindex]可以获取序列中的一部分，这里的firstindex和lastindex表达式的结果是数字。如果seq存储序列"a", "b", "c", "d", "e", "f"，
那么表达式seq[1..4]将会是含有"b", "c", "d", "e"的序列（索引为1的项是"b"，索引为4的项是"e"）。lastindex可以被省略，那么这样将会读取到序列的末尾。如果
seq存储序列"a", "b", "c", "d", "e", "f"，那么seq[3..]将是含有"d", "e", "f"的序列，从FreeMarker 2.3.3版本以后lastindex才能省略.
<#list userList[0..1] as data>  
   ${data.name}
</#list>  