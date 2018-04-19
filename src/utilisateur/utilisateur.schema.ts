import * as Joi from 'joi';

export const UtilisateurSchema = Joi.object().keys({
    nom: Joi.string().required(),
    prenom: Joi.string().required(),
    email: Joi.string().required(),
    password: Joi.string().required(),
    roles: Joi.array().items({
      nom: Joi.string().required()
    }).required()
  })