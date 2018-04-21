import { Module,
  NestModule,
  MiddlewaresConsumer,
  RequestMethod } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Utilisateur } from '../utilisateur/utilisateur.entity';
import * as passport from 'passport';
import { JwtStrategy } from './passport/jwt.strategy';

@Module({
  imports: [TypeOrmModule.forFeature([Utilisateur])],
  controllers: [AuthController],
  components: [AuthService, JwtStrategy],
})
export class AuthModule {
  public configure(consumer: MiddlewaresConsumer) {
    consumer
      .apply(passport.authenticate('jwt', { session: false }))
      .forRoutes({ path: '/projets/getAll', method: RequestMethod.POST });
  }
}
