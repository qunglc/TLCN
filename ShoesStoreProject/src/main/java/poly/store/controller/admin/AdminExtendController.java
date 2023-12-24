package poly.store.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import poly.store.common.Constants;

@Controller
public class AdminExtendController {

	@GetMapping("/admin/extend/specification")
	public String specification(Model model) {
		return Constants.USER_DISPLAY_ADMIN_EXTEND_SPECIFICATION;
	}
	

	@GetMapping("/admin/extend/crop-image")
	public String cropImage(Model model) {
		return Constants.USER_DISPLAY_ADMIN_EXTEND_CROP_IMAGE;
	}
}
