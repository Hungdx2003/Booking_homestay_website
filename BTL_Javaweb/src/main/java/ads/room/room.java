package ads.room;

import java.sql.ResultSet;
import java.util.ArrayList;

import ads.objects.roomObject;

public interface room {
	boolean addRoom(roomObject item);
	boolean editRoom(roomObject item);
	boolean delRoom(roomObject item);
	
	ArrayList<ResultSet> getRoom(String multiSelect);
	ArrayList<ResultSet> getRoom(roomObject similar, int at, byte total);
	ResultSet getRoom(int id);
}
