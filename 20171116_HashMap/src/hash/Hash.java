package hash;

import java.util.HashMap;

public class Hash {

	public static void main(String[] args) {
		HashMap<String, String> hash = new HashMap<>();
		hash.put("Login.do", "Loginservice");
		String login = hash.get("Login.do");
		
		System.out.println("Login : " + login);
	}

}
