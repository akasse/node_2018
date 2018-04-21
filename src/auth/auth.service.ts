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
    algorithm: 'HS256',
    expiresIn: '2 days',
    jwtid: process.env.JWT_ID || '',
  };

  get options(): IJwtOptions {
    return this._options;
  }

  set options(value: IJwtOptions) {
    this._options.algorithm = value.algorithm;
  }

  public async sign(login: Login): Promise<string> {
    console.log("========", login)
    const user: any = await this.utilisateurRepository
      .find({
        select: ["id", "email"],
        where: {
          status: true,
          email: login.email,
          password: crypto.createHmac('sha256', login.password).digest('hex'),
        },
      }).then(data => {
        if (data.length == 0) {
          return 1;
        } else {
          return data;
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
      return await jwt.sign(payload, process.env.JWT_KEY || '', this._options);
    }
  }

  public async checkToken(id,email){
    const user = await this.utilisateurRepository.findOneById(id);
    console.log("========", user)
    return user;
  }
  public async checkToken_(id,email){
    const user: any = await this.utilisateurRepository
    .find({
      select: ["id", "email","prenom"],
      where: {
        status: true,
        id: id,
        email:email,
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

   return user;
  }
}
