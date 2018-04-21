import * as jwt from 'jsonwebtoken';
import * as crypto from 'crypto';
import { Utilisateur } from './../utilisateur/utilisateur.entity';
import { Component, HttpStatus, HttpException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { IAuthService, IJwtOptions } from './interfaces/IAuthService';
import { Login } from './auth.schema';

@Component()
export class AuthService implements IAuthService {

  constructor(
    @InjectRepository(Utilisateur)
    private readonly utilisateurRepository: Repository<Utilisateur>,
  ) { }

  private _options: IJwtOptions = {
    algorithm: process.env.JWT_ALGORITHM || 'HS256',
    expiresIn: process.env.JWT_EXPIRESIN ||'2 days',
    jwtid: process.env.JWT_ID || '',
  };

  get options(): IJwtOptions {
    return this._options;
  }

  set options(value: IJwtOptions) {
    this._options.algorithm = value.algorithm;
  }

  public async sign(login: Login): Promise<string> {
    const user: any = await this.utilisateurRepository
      .find({
        select: ["email"],
        where: {
          status: true,
          email: login.email,
          password: crypto.createHmac(process.env.CRYPTO_KEY || 'sha256', login.password).digest(process.env.CRYPTO_DIGEST ||'hex'),
        },
        join: {
          alias: "user",
          leftJoinAndSelect: {
          "roles": "user.roles"
          }
          }
      }).then(data => {
        console.log("==USER==",data)
        if (data[0].email == undefined) {
          return 1;
        } else {
          return data[0];
        }
      }).catch(
      error => {
        return 1
      });

    if (user == 1) {
      return user;
    } else {
      const payload = {
        user
      };
      return await jwt.sign(payload, process.env.JWT_KEY || 'akasse@*', this._options);
    }
  }

 

  public async validateUser(email): Promise<boolean> {
    try {
      const user = await this.utilisateurRepository.findOne({ email: email });
      return user ? true : false;
    } catch (err) {
      return false;
    }
  }

  
}
