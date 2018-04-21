'use strict';

import * as jwt from 'jsonwebtoken';
import { Middleware, NestMiddleware, HttpException, HttpStatus } from '@nestjs/common';
import { Request, Response, NextFunction } from 'express';


import { Utilisateur } from './../utilisateur/utilisateur.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Middleware()
export class AuthMiddleware implements NestMiddleware {
    
    constructor(
        @InjectRepository(Utilisateur)
        private readonly utilisateurRepository: Repository<Utilisateur>,
      ) { }
      
    public resolve() {
        return async (req: Request, res: Response, next: NextFunction) => {
            if (req.headers.authorization && (req.headers.authorization as string).split(' ')[0] === 'Bearer') {
                const token = (req.headers.authorization as string).split(' ')[1];
                const decoded: any = jwt.verify(token, process.env.JWT_KEY || '');
               
                console.log("=====decoded===", decoded)
                const user: any = await this.utilisateurRepository
                .find({
                  select: ["id", "email"],
                  where: {
                    //status: true,
                    id: decoded.id,
                    email: decoded.email,
                  },
                }).then(data => {
                  console.log("========", data)
                  if (data.length == 0) {
                    return 1;
                  } else {
                    console.log("=====ok===")
                    return data;
                  }
                }).catch(
                error => {
                  console.log("========", error)
                  return 1
                });
               
                if (user == 1) throw new HttpException({
                    status: HttpStatus.UNAUTHORIZED,
                    error: 1,
                    message: "unauthorized"
                  }, 404);
                next();
            } else {
                 throw new HttpException({
                    status: HttpStatus.UNAUTHORIZED,
                    error: 1,
                    message: "unauthorized"
                  }, 404);;
            }
        };
    }
}
