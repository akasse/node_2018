
'use strict';

import * as jwt from 'jsonwebtoken';
import { Middleware, NestMiddleware, HttpException, HttpStatus } from '@nestjs/common';
import { Request, Response, NextFunction } from 'express';

import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { AuthService } from './auth.service';

@Middleware()
export class AuthMiddleware implements NestMiddleware {

    constructor(private readonly authService: AuthService) { }

    public resolve() {
        return async (req: Request, res: Response, next: NextFunction) => {

            if (req.headers.authorization &&
                (req.headers.authorization as string).split(' ')[0] === 'Bearer') {
                try {
                    const token = (req.headers.authorization as string).split(' ')[1];
                    const decoded: any = jwt.verify(token, process.env.JWT_KEY || 'akasse4@*E');
                    console.log("=====decoded===", decoded)
                    const user: any = await this.authService.checkToken(decoded.user[0].id, decoded.user[0].email);
                    console.log("====USER==",user)
                    if (user == 1) {
                        res.status(HttpStatus.UNAUTHORIZED).json(
                            {
                                status: HttpStatus.UNAUTHORIZED,
                                error: 1,
                                message: "unauthorized ak jwt"
                            }
                        );
                    } else {
                        let x: string = "nextak";
                        console.log("====NEXT==")
                        next();
                    }
                } catch (error) {
                    res.status(HttpStatus.UNAUTHORIZED).json(
                        {
                            status: HttpStatus.UNAUTHORIZED,
                            error: 1,
                            console: error,
                            message: "unauthorized ak jwt expire"
                        }
                    );
                }

            } else {
                res.status(HttpStatus.UNAUTHORIZED).json(
                    {
                        status: HttpStatus.UNAUTHORIZED,
                        error: 1,
                        message: "unauthorized"
                    }
                );
            }


        };
    }
}
