import * as Joi from 'joi';

export class Login {
    email:string;
    password:string;
}

export const LoginSchema = Joi.object().keys({
    email: Joi.string().email().required(),
    password: Joi.string().required()
})