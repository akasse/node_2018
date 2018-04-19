import { Module } from '@nestjs/common';
import { ProjetService } from './projet.service';
import { ProjetController } from './projet.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Projet } from './projet.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Projet])],
  components: [ProjetService],
  controllers: [ProjetController],
})
export class ProjetModule {}
