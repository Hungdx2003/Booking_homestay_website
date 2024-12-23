package ads.objects;
import lombok.*;
@Data

public class PaymentObject {
	private int payment_id;
	private int booking_id;
	private String pay_date;
	private int amount;
	private String pay_method;
	private String notes;
	private String status;
}
