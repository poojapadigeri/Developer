//
//Generated by AdminBooster
//

public class OpenWeatherMap{
	public Coord coord;
	public Weather[] weather;
	public String base;	//stations
	public Main main;
	public Integer visibility;	//10000
	public Wind wind;
	public Clouds clouds;
	public Integer dt;	//1485789600
	public Sys sys;
	public Integer id;	//2643743
	public String name;	//London
	public Integer cod;	//200
	public class Coord {
		public Double lon;	//-0.13
		public Double lat;	//51.51
	}
	public class Weather {
		public Integer id;	//300
		public String main;	//Drizzle
		public String description;	//light intensity drizzle
		public String icon;	//09d
	}
	public class Main {
		public Double temp;	//280.32
		public Integer pressure;	//1012
		public Integer humidity;	//81
		public Double temp_min;	//279.15
		public Double temp_max;	//281.15
	}
	public class Wind {
		public Double speed;	//4.1
		public Integer deg;	//80
	}
	public class Clouds {
		public Integer all;	//90
	}
	public class Sys {
		public Integer type;	//1
		public Integer id;	//5091
		public Double message;	//0.0103
		public String country;	//GB
		public Integer sunrise;	//1485762037
		public Integer sunset;	//1485794875
	}
	public static OpenWeatherMap parse(String json){
		return (OpenWeatherMap) System.JSON.deserialize(json,OpenWeatherMap.class);
	}

	
}