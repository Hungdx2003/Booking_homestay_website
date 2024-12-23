package ads.objects;
import lombok.*;
@Data

public class bookingObject {
	private int booking_id;
	private int user_id ;
	private int room_id;
	private String check_in_date;
	private String check_out_date;
	private String reason_cancel;
	private int est_Days;
	private int total_price;
	private String booking_notes;
	private String booking_status;
	private String room_type;
	private String room_noBeds;
	private String room_status;
}
