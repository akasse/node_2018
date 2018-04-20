import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Projet } from './projet.entity';

@Component()
export class ProjetService {
  constructor(
    @InjectRepository(Projet)
    private readonly ProjetRepository: Repository<Projet>,
  ) { }



  async create(projet: Projet) {
    return await this.ProjetRepository.save(projet);
  }

  async creates(projet: Projet[]) {
    return await this.ProjetRepository.save(projet);
  }
  async update(id: string, projet: Projet) {
    return await this.ProjetRepository.updateById(id, projet);
  }

  async delete(id: string) {
    return await this.ProjetRepository.removeById(id);
  }

  async getOne(id: string): Promise<Projet> {
    return await this.ProjetRepository.findOneById(id);
  }

  async findAll_(): Promise<Projet[]> {
    return await this.ProjetRepository.find();
  }

  //requete
  
  async findAll(page:number=0, limit:number = 10): Promise<any> {
    
    const result = await this.ProjetRepository
      .createQueryBuilder("projet")
      .select(["projet.id","projet.nom", "projet.description","projet.createdDate" ])
      .orderBy({
        "projet.createdDate": "DESC"
      })
      .skip(limit*page)
      .take(limit)
      .getManyAndCount();

     return Promise.all( result )
      .then(data => {
        return {page:page,limit:limit,totalsItem:data[1],data:data[0],error: 0, message: "OK"};
    })
  }




}
