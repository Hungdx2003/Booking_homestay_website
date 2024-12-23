package ads.objects;

import lombok.*;

@Data
public class UserObject {
	private int user_id;
	private String user_name;
	private String user_password;
	private String user_full_name;
	private String user_gender;
	private String user_birthday;
	private String user_id_number;
	private String user_email;
	private String user_phone_number;
	private String user_nationality;
	private String user_address;
	private int role_id;
	private Boolean user_is_active;
	private String user_created_at;
	private String user_updated_at;
}
