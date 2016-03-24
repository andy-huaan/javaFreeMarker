<#--内置函数调用方式：直接在内容后面?内建函数即可-->
一、处理字符串的内建函数
(1)取子字符串：${content?substring(1,2)} 或者 ${content?substring(1)}
(2)使字符串第一个字母大写：${content?cap_first}
(3)使字符串第一个字母小写：${content?uncap_first}
(4)所以单词首字母大写：${"greEN mouse"?capitalize}
(5)以...结尾：<#if 'read head'?ends_with('head')>以head结尾</#if>
       以...开始：<#if 'read head'?starts_with('read')>以read开始</#if>
(6)HTML标签处理：${htmlContent?html} 
(7)获取字符串长度：${content?length}
(8)多函数使用：${htmlContent?html?upper_case}
(9)返回第一次字符串中出现子串时的索引位置：${"abcabc"?index_of("bc")} <#-- -1表示不存在 -->
(10)最后的索引位置：${"abcabc"?last_index_of("bc")}
(11)所有字母小写：${"SDFJKDJFKD"?lower_case}
(12)所有字母大写：${"sdjflsdjf"?upper_case}
(13)去掉字符串前后的空白字符：${" jdkfj djfk   "?trim}
(14)取得数字的整数部分,结果带符号：${-1.234?int}
(15)左侧用空格补齐，达到指定长度：[${"ab"?left_pad(5)}] 或者用指定符号填充：[${"ab"?left_pad(5, "-")}] <#--右侧补齐使用right_pad-->
(16)字符串包含：<#if "piceous"?contains("ice")>It contains "ice"</#if>
(17)内容替换：${"aaaaa"?replace("aaa", "X")}，如果第一个参数是空字符串，那么所有的空字符串将会被替换：${"foo"?replace("","|")}
(18)URL转义：<#setting url_escaping_charset="UTF-8"/>
    UTF-8编码:<a href="bar.cgi?x=${htmlContent?url}">bar</a> <#--如果内建函数url没有参数，那么它会使用由url_escaping_charset设置的字符集-->
    GBK编码:<a href="bar.cgi?x=${htmlContent?url('GBK')}">bar</a>
(19)数据分割：
<#list "someMOOtestMOOtext"?split("MOO") as x>
-${x}
</#list>

二、处理数字的内建函数
(1)数字转字符：${3000000.25?c}
(2)数字转字符串:${age}--${age?string.number}--${age?string.currency}--${age?string.percent}--${age?string.computer}
(3)四舍五入小数位数控制:${money?string("0")}--${money?string("0.00")}--${money?string("0.#")}
(4)round：返回最近的整数;如果数字以.5结尾，则向正无穷进位
   floor：返回数字的舍掉小数后的整数（也就是说向负无穷舍弃）
   ceiling：返回数字小数进位后的整数（也就是说向正无穷进位）
<#assign testlist=[0, 1, -1, 0.5, 1.5, -0.5,-1.5, 0.25, -0.25, 1.75, -1.75]>
<#list testlist as result>
	${result}：round=${result?round} floor=${result?floor} ceiling=${result?ceiling} 
</#list>
二、布尔值
(1)将布尔值转换为默认字符串：${married?string}
(2)将布尔值转换为字符串：${married?string("值为true", "值为false")}

三、日期处理
(1)日期格式化:${date?string("yyyy-MM-dd HH:mm:ss")}

四、处理序列的内建函数
(1)序列包含
<#assign x = ["red", 16, "blue", "cyan"]>
"blue": ${x?seq_contains("blue")?string("yes", "no")}
"yellow": ${x?seq_contains("yellow")?string("yes", "no")}
16: ${x?seq_contains(16)?string("yes", "no")}
"16": ${x?seq_contains("16")?string("yes", "no")}
(2)第一次出现...时的索引位置
<#assign colors = ["red","blue", "green", "blue"]>
${colors?seq_index_of("blue")}
如果设置第二个参数，表示从哪个索引位置开始：
${colors?seq_index_of("blue",1)}
(3)最后一次出现..的索引位置
${colors?seq_last_index_of("blue")}

