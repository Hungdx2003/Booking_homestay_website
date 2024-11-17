package ads.object;
import lombok.*;
@Data

public class bookingObject {
	private int booking_id;
	private int user_id ;
	private int room_id;
	private String check_in_date;
	private String check_out_date;
	private String max_opacity;
	private int est_Days;
	private int total_price;
	private String booking_notes;
	private String booking_status;
}
