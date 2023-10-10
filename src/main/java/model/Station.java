package model;

import java.util.HashMap;
import java.util.Map;

public class Station {

	public static Map<Integer, String> stations = new HashMap<>();

	public static String getStationName(int key) {

		String station = stations.get(key);

		// Check if the key exists in the HashMap
		if (station != null) {
			return station;
		}

		return null;
	}

	public static int getticketPrice(int key1, int key2) {

		String station1 = stations.get(key1);
		String station2 = stations.get(key2);

		// Check if the key exists in the HashMap
		if (station1 != null & station2 != null) {

			int distance = key1 - key2;
			int price = 0;

			if (distance < 0) {
				distance *= -1;
			}

			if (distance < 5) {
				price = distance * 10;
			} else if (distance < 10) {
				price = distance * 9;
			} else if (distance < 20) {
				price = distance * 7;
			} else if (distance < 30) {
				price = distance * 6;
			} else if (distance < 40) {
				price = distance * 5;
			}else {
				price = distance * 4;
			}

			return price;
		}

		return -1;
	}

	static {
		stations.put(1, "Aluthgama");
		stations.put(2, "Ambalangoda");
		stations.put(3, "Ambewela");
		stations.put(4, "Anuradhapura");
		stations.put(5, "Anuradhapura Town");
		stations.put(6, "Avissawella");
	}

}
