package kr.or.bit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.bit.dto.EmpDto;
import kr.or.bit.service.EmpService;

@RestController
@RequestMapping("/emps")
public class EmpRestController {

	@Autowired
	private EmpService service;

	@RequestMapping(value="", method=RequestMethod.GET)
	public List<EmpDto> listEmp() {
		List<EmpDto> empList = null;
		try {
			empList=service.listEmp();
			System.out.println("hello");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return empList;
	}
	
	// 조회 
	@RequestMapping(value="/{empno}", method=RequestMethod.GET)
	public EmpDto viewEmp(@PathVariable("empno") int empno) {
		EmpDto dto = null;
		try {
			dto = service.readEmp(empno);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// Update 시작 
	@RequestMapping(value="/{empno}/update", method= {RequestMethod.GET })
	public String editEmp(@PathVariable("empno") int empno, Model model) {
		
		try {
			EmpDto dto = service.readEmp(empno);
			model.addAttribute("emp", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "emp/updateEmp";
	}

	// Update 완료  
	@RequestMapping(value="/{empno}", method= {RequestMethod.PUT , RequestMethod.PATCH })
	public void editEmp(@PathVariable("empno") int empno, EmpDto dto) {
		try {
			service.updateEmp(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value="/{empno}", method=RequestMethod.DELETE)
	public void deleteEmp(int empno) {
		try {
			service.removeEmp(empno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
