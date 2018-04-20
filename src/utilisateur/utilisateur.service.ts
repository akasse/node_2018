import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Utilisateur } from './utilisateur.entity';
import { Role } from './role.entity';

@Component()
export class UtilisateurService {
  constructor(
    @InjectRepository(Utilisateur)
    private readonly utilisateurRepository: Repository<Utilisateur>,
    @InjectRepository(Role)
    private readonly roleRepository: Repository<Role>
  ) {}

  async create(utilisateur: Utilisateur) {
    return await this.utilisateurRepository.save(utilisateur);
  }

  async update(id:string,utilisateur: Utilisateur) {
    return await this.utilisateurRepository.updateById(id,utilisateur);
  }

  async delete(id:string) {
    return await this.utilisateurRepository.removeById(id);
  }

  async getOne(id:string):Promise<Utilisateur> {
    return await this.utilisateurRepository.findOneById(id);
  }

  async findAll(): Promise<Utilisateur[]> {
    return await this.utilisateurRepository.find();
  }

  async findAllRole(): Promise<Role[]> {
    return await this.roleRepository.find();
  }

  //==============
  async creates(utilisateurs: Utilisateur[]) {
    return await this.utilisateurRepository.save(utilisateurs);
  }
}
