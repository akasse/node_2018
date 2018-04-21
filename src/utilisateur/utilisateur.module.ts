import { AuthService } from './../auth/auth.service';
import { AuthMiddleware } from './../auth/auth.middleware';
import { Module, RequestMethod } from '@nestjs/common';
import { UtilisateurService } from './utilisateur.service';
import { UtilisateurController } from './utilisateur.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Utilisateur } from './utilisateur.entity';
import { Role } from './role.entity';
import { MiddlewaresConsumer } from '@nestjs/common/interfaces';

@Module({
  imports: [TypeOrmModule.forFeature([Utilisateur,Role])],
  components: [UtilisateurService, AuthService],
  controllers: [UtilisateurController],
})
export class UtilisateurModule {
  public configure(consumer: MiddlewaresConsumer) {
    consumer.apply(AuthMiddleware).forRoutes(
        { path: '/utilisateurs/:id', method: RequestMethod.GET },
    );
}
}
