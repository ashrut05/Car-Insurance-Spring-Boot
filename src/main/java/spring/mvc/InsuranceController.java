/*
 *	Ashrut Sharma - 301107609
 *  Assignment 01
 *  Spring Web MVC Application
 *  InsuranceController.java
 */

package spring.mvc;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*
 *  Insurance controller to handle the POST request from the form and 
 *  handle the data by using the Insurance bean to display the proper output.
 */

@Controller
public class InsuranceController {
	@RequestMapping(value = "/calculateQuotation", method = RequestMethod.POST)
	public ModelAndView calculateQuotation(HttpServletRequest request,HttpServletResponse response) throws ParseException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addresslin1 = request.getParameter("addresslin1");
		String addresslin2 = request.getParameter("addresslin2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipCode = request.getParameter("zipCode");
		String vin = request.getParameter("vin");
		String carBrand = request.getParameter("carBrand");
		String carModel = request.getParameter("carModel");
		String year = request.getParameter("year");
		double kms = Double.parseDouble(request.getParameter("kms"));
		int drivers = Integer.parseInt(request.getParameter("drivers"));
		int driving = Integer.parseInt(request.getParameter("driving"));
		String commute = request.getParameter("commute");
		String insured = request.getParameter("insured");

		
		Insurance insurance = new Insurance( 
									firstName,
									lastName,
									phone,
									email,
									addresslin1,
									addresslin2,
									city,
									state,
									zipCode,
									vin,
									carBrand,
									carModel,
									year,
									kms,
									drivers,
									driving,
									commute,
									insured);
		
		boolean validData = insurance.validateUserInput();
		double insuranceCost = insurance.calculateQuotation();
		ModelAndView mview = null;
		
		if(validData) {
			mview = new ModelAndView("show-quotation");
			mview.addObject("validData", validData);
			mview.addObject("insuranceData", insurance);
			mview.addObject("insuranceCost", insuranceCost);
		}else {
			mview = new ModelAndView("insurance-error");
		}
		
		
		return mview;
	}
}
