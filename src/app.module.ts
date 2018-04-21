import { AuthModule } from './auth/auth.module';

import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PhotoModule } from './photo/photo.module';

import { ProjetModule } from './projet/projet.module';
import { UtilisateurModule } from './utilisateur/utilisateur.module';

@Module({
  imports: [TypeOrmModule.forRoot(),AuthModule, PhotoModule, UtilisateurModule,ProjetModule],
})
export class ApplicationModule {}
