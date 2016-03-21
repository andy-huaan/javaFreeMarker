package javaFreeMarker;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import entity.Users;
import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * JavaSE使用FreeMarker
 * @author admin
 *
 */
public class Test1 {
	
	public static void main(String[] args) throws Exception {
		//创建Freemarker配置实例
		Configuration config = new Configuration();
		config.setDirectoryForTemplateLoading(new File("templates"));
		
		//创建数据模型
		Map<String, Object> root = new HashMap<>();
		root.put("user", "赵华安");
		root.put("htmlContent", "<a>超链接</a>");
		root.put("content", "adsldf");
		root.put("age", 13);
		root.put("date", new Date());
		root.put("userList", getListData());
		
		//加载模版文件
		Template tl = config.getTemplate(getTemplateFile("map"));
		
		//显示生成的数据
		Writer out = new OutputStreamWriter(System.out);
		tl.process(root, out);
		out.flush();
		out.close();
	}
	
	//获取模版文件
	private static String getTemplateFile(String name){
		return name+".ftl";
	}
	
	//组装集合数据
	private static List<Users> getListData(){
		List<Users> list = new ArrayList<>();
		list.add(new Users("赵华安",10,"男"));
		list.add(new Users("刘亚飞",20,"未知"));
		list.add(new Users("郭总",30,"未知"));
		return list;
	}
}
