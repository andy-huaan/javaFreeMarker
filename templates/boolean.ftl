页面直接打印布尔值时FreeMarker会抛出错误，我们需要将布尔值进行转换
(1)将布尔值转换为默认字符串：${married?string}
(2)将布尔值转换为字符串：${married?string("值为true", "值为false")}

