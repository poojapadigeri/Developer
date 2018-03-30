public class APIParse{
	public String applicationId;	//3A4CAE9B71A1CCD7FF41F51006E9ED00
	public Integer cobrandId;	//10010352
	public String locale;	//en_US
	public Session session;
	public class Session {
		public String cobSession;	//08062013_2:49942e1dd04add40de929a7cf011f16f4450cfd4a04e8a747ed63ed3e9d6ecb7601b21e09041ab92dfe00deb29ec32b115c1b4b8955d09e2260020c6155a8214
	}
	public static APIParse parse(String json){
		return (APIParse) System.JSON.deserialize(json, APIParse.class);
	}

	
}