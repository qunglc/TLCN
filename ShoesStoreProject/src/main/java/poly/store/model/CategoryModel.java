
package poly.store.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryModel {
	private int id;
	private String name;
	private String banner;
	private String logo;
	private String describe;
	private String nameSearch;
}
