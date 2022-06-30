package spring.test.bit;

import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller 
public class HomeController {
	@RequestMapping(value = "/",method = RequestMethod.GET)//spring 4����
	public String test1(Model model,HttpSession session) { 
		
		//�޽������ �̸����� Spring Framework Start!!!�� request������ ����
		model.addAttribute("message","Spring Framework Start!!!"); 
		//session������ ���� 
		session.setAttribute("myid", "angel");
		return "result1";
	}
	@GetMapping("/form") //@=������̼� (������ ctrl+space)
	public String go(Model model)
	{
		return "form";
	}
	@GetMapping("/happy")
	public String go2(Model model)
	{
		model.addAttribute("today", new Date());
		return "nice";
	}
	@GetMapping("/for")
	public String go3(Model model) {
		List<String> list=new Vector<String>();
		list.add("red");
		list.add("green");
		list.add("pink");
		list.add("orange");
		list.add("blue");
		list.add("black");
		list.add("gray");
		list.add("magenta");
	
		model.addAttribute("flowers", list);
		
		return "list";
	}
}
