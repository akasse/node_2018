import * as Joi from 'joi';

export const UtilisateurSchema = Joi.object().keys({
    nom: Joi.string().min(2).max(50).required(),
    prenom: Joi.string().min(2).max(100).required(),
    email: Joi.string().email().required(),
    password: Joi.string().required(),
    roles: Joi.array().items({
      nom: Joi.string().required()
    }).required()
  })


  export const UtilisateurSchemaDev = Joi.array().items({
    nom: Joi.string().min(2).max(50).required(),
    prenom: Joi.string().min(2).max(100).required(),
    email: Joi.string().email().required(),
    password: Joi.string().required(),
    roles: Joi.array().items({
      nom: Joi.string().required()
    }).required()
  })