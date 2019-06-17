package Thermometer;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {

	private Map<String, Double> locationCelsiusMap = new HashMap<String, Double>();
	
	public void setCelsius(String loacation, Double value){
		locationCelsiusMap.put(loacation, value);
	}
	
	public Double getCelsius(String location){
		return locationCelsiusMap.get(location);
	}
	
	public Double getFahrenheit(String location){
		Double celsius = getCelsius(location);
		
		if(celsius == null){
			return null;
		}
		
		return celsius.doubleValue() * 1.8 + 32.0;
	}
	
	public String getInfo(){
		return "�µ��� ��ȯ�� 1.1";
	}
}

