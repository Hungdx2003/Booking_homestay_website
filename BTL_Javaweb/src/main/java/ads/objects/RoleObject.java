package ads.objects;

import lombok.*;

@Data
public class RoleObject {
	private int role_id;
	private String role_name;
	private String role_description;
	private int create_by;
	private String role_created_at;
	private String role_updated_at;
	
}
