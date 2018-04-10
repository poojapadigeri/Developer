public class fromJSON{
	public cls_coord coord;
	public cls_weather[] weather;
	public String base;	//cmc stations
	public cls_main main;
	public cls_wind wind;
	public cls_clouds clouds;
	public cls_rain rain;
	public Integer dt;	//1435658272
	public cls_sys sys;
	public Integer id;	//2172797
	public String name;	//Cairns
	public Integer cod;	//200
	class cls_coord {
		public Double lon;	//145.77
		public Double lat;	//-16.92
	}
	class cls_weather {
		public Integer id;	//803
		public String main;	//Clouds
		public String description;	//broken clouds
		public String icon;	//04n
	}
	class cls_main {
		public Double temp;	//293.25
		public Integer pressure;	//1019
		public Integer humidity;	//83
		public Double temp_min;	//289.82
		public Double temp_max;	//295.37
	}
	class cls_wind {
		public Double speed;	//5.1
		public Integer deg;	//150
	}
	class cls_clouds {
		public Integer all;	//75
	}
	class cls_rain {
		public Integer h;	//3
	}
	class cls_sys {
		public Integer type;	//1
		public Integer id;	//8166
		public Double message;	//0.0166
		public String country;	//AU
		public Integer sunrise;	//1435610796
		public Integer sunset;	//1435650870
	}
	public static fromJSON parse(String json){
		return (fromJSON) System.JSON.deserialize(json, fromJSON.class);
	}

	
	
	}