package com.DmitriyNikanorov.spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckEmailValidator implements
        ConstraintValidator<CheckEmail,String> {
   private String engOfEmail;

    @Override
    public void initialize(CheckEmail checkEmail) {
    engOfEmail = checkEmail.value();
    }

    @Override
    public boolean isValid(String enteredValue, ConstraintValidatorContext
            constraintValidatorContext) {

        return enteredValue.endsWith(engOfEmail);
    }
}
