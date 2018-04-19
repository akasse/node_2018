import { Module } from '@nestjs/common';
import { UtilisateurService } from './utilisateur.service';
import { UtilisateurController } from './utilisateur.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Utilisateur } from './utilisateur.entity';
import { Role } from './role.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Utilisateur,Role])],
  components: [UtilisateurService],
  controllers: [UtilisateurController],
})
export class UtilisateurModule {}
