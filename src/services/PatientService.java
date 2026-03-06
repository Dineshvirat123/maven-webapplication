package com.kk.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/patient")
public class PatientService {

@RequestMapping(value = "/getPatientDetails", method = RequestMethod.GET)
@ResponseBody
String getPatientDetails(HttpServletRequest request,
HttpServletResponse response,
HttpSession httpSession) throws JSONException {

JSONObject js = new JSONObject();

js.put("Patient Name","Ravi Kumar");
js.put("Age","32");
js.put("Blood Group","O+");
js.put("Doctor","Dr. Sharma");
js.put("Department","Cardiology");
js.put("Hospital","City Care Hospital");

return js.toString();

}

}
