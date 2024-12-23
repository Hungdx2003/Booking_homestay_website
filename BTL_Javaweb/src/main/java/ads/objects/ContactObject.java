package ads.objects;
import lombok.*;
@Data

public class ContactObject {
	private int contact_id;
	private String full_name;
	private String phone;
	private String email;
	private String contact_date;
	private String response_by;
	private String status;
}
