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
		config.setNumberFormat("0.#");
		
		//创建数据模型
		Map<String, Object> root = new HashMap<>();
		root.put("user", "赵华安");
		root.put("htmlContent", "<a>超链接</a>");
		root.put("content", "ads ldf");
		root.put("age", 13);
		root.put("money", 1.236);
		root.put("date", new Date());
		root.put("userList", getListData());
		root.put("married", true);
		
		//加载模版文件,并将此模版放入缓存中，缓存默认刷新时间5秒
		//这个时间就是从上次对某个模板检查更新后，FreeMarker再次检查模板所要间隔的时间
		Template tl = config.getTemplate(getTemplateFile("map"));
		
		//显示生成的数据
		Writer out = new OutputStreamWriter(System.out);
		tl.process(root, out);
		out.flush();
		out.close();
		
		//config.clearTemplateCache(); //清空模版缓存
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
