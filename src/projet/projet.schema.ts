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

export const PaginationSchema = Joi.object().keys({
    page: Joi.number().min(0).required(),
    limit: Joi.number().min(5).max(50).required()
})

export class Pagination {
    page: number = 0;
    limit: number = 10;
}


export const ProjetSchemaDev = Joi.array().items({
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
