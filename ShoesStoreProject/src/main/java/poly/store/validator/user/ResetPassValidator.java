
package poly.store.validator.user;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import poly.store.model.ResetPassword;


@Component
public class ResetPassValidator implements Validator {


	@Override
	public boolean supports(Class<?> clazz) {
		return clazz == ResetPassword.class;
	}


	@Override
	public void validate(Object target, Errors errors) {
		// Lien ket Object voi UserRegister class
		ResetPassword userRegister = (ResetPassword) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotBlank.userRegister.password");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "NotBlank.userRegister.confirmPassword");
		
		if(!errors.hasFieldErrors()) {
			if(userRegister.getConfirmPassword().equals(userRegister.getPassword()) == false) {
				errors.rejectValue("confirmPassword", "NotDuplicate.userRegister.confirmPassword");
			}
		}
		
		if(!errors.hasFieldErrors("password")) {
			if(userRegister.getPassword().length() < 7) {
				errors.rejectValue("password", "Min.userRegister.password");
			}
			if(userRegister.getPassword().length() > 15) {
				errors.rejectValue("password", "Max.userRegister.password");
			}
		}
	}

}
