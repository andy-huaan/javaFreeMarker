<#--

<#list mapObj?keys as k>    
    <#assign item = mapObj[k]>  
    //or <#assign item = mapObj.get(k)>   
	${item.title}                                          
</#list> 

-->

<#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}>
Joe is ${ages.Joe}