package ads.object;
import lombok.Data;
@Data

public class roomObject {
	private int room_id;
	private String room_name;
	private String room_type;
	private String room_noBeds;
	private String room_description;
	private int room_price;
	private String room_status;
	private String room_created_at;
	private String room_updated_at;
}
