import * as Joi from 'joi';

export const ProjetSchema = Joi.object().keys({
    nom: Joi.string().required(),
    description: Joi.string(),
    type: Joi.string().required(),
    utilisateur: Joi.object().keys({
      id: Joi.string()
      .guid({
        version: [
        'uuidv4',
        'uuidv5'
        ]}).required(), 
    }).required()
})