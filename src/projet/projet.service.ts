import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Projet } from './projet.entity';

@Component()
export class ProjetService {
  constructor(
    @InjectRepository(Projet)
    private readonly ProjetRepository: Repository<Projet>,
  ) {}



async create(projet: Projet) {
  return await this.ProjetRepository.save(projet);
}
  async update(id:string,projet: Projet) {
    return await this.ProjetRepository.updateById(id,projet);
  }

  async delete(id:string) {
    return await this.ProjetRepository.removeById(id);
  }

  async getOne(id:string):Promise<Projet> {
    return await this.ProjetRepository.findOneById(id);
  }

  async findAll(): Promise<Projet[]> {
    return await this.ProjetRepository.find();
  }

  
}
