import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Transaction } from 'typeorm';
import { Projet } from './projet.entity';
import { Utilisateur } from '../utilisateur/utilisateur.entity';

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

  //requete

  async findAll_(page: number = 0, limit: number = 10): Promise<any> {
    const result = await this.ProjetRepository
      .createQueryBuilder("projet")
      .select(["projet.id", "projet.nom", "projet.description", "projet.createdDate"])
      .orderBy({
        "projet.createdDate": "DESC"
      })
      .skip(limit * page)
      .take(limit)
      .getManyAndCount();

    return Promise.all(result)
      .then(data => {
        return { page: page, limit: limit, totalsItem: data[1], data: data[0], error: 0, message: "OK" };
      })
  }


  async findAll_1(page: number = 0, limit: number = 10): Promise<any> {
    const result = await this.ProjetRepository
      .createQueryBuilder("projet")
      .select(
      ["projet.id", "projet.nom",
        "projet.description", "projet.createdDate",
        "utilisateur.id", "utilisateur.prenom",
        "utilisateur.nom",
        "roles.nom"
      ])
      .orderBy({
        "projet.createdDate": "DESC"
      })
      .leftJoin("projet.utilisateur", "utilisateur")
      .leftJoin("utilisateur.roles", "roles")
      .skip(limit * page)
      .take(limit)
      .getManyAndCount();

    return Promise.all(result)
      .then(data => {
        return { page: page, limit: limit, totalsItem: data[1], data: data[0], error: 0, message: "OK" };
      })
  }

  async findAll_2(page: number = 0, limit: number = 10): Promise<any> {
    const result = await this.ProjetRepository
      .createQueryBuilder("projet")
      .select(
      [
        "projet.id",
        "projet.nom",
        "projet.type",
        "projet.description",
        "projet.createdDate",
        "utilisateur.id",
        "roles.nom"
      ])
      .where("projet.status = :status", { status: false })
      .orderBy({
        "projet.createdDate": "DESC"
      })
      .leftJoin("projet.utilisateur", "utilisateur")
      .leftJoin("utilisateur.roles", "roles")
      .skip(limit * page)
      .take(limit)
      .getManyAndCount();

    return Promise.all(result)
      .then(data => {
        return { page: page, limit: limit, totalsItem: data[1], data: data[0], error: 0, message: "OK" };
      })
  }



  async findAll(page: number = 0, limit: number = 10,user:Utilisateur): Promise<any> {
    console.log("==USER==1=",user.email)
    const result = await this.ProjetRepository
      .createQueryBuilder("projet")
      .select(
      [
        "projet.id",
        "projet.nom",
        "projet.type",
        "projet.description",
        "projet.createdDate",
        "utilisateur.id",
        "roles.nom"
      ])
      .where("projet.status = :status", { status: true })
      .andWhere("utilisateur.email = :email", { email: user.email })
      .orderBy({
        "projet.createdDate": "DESC"
      })
      .leftJoin("projet.utilisateur", "utilisateur")
      .leftJoin("utilisateur.roles", "roles")
      .skip(limit * page)
      .take(limit)
      .getManyAndCount();

    return Promise.all(result)
      .then(data => {
        return { page: page, limit: limit, totalsItem: data[1], data: data[0], error: 0, message: "OK" };
      })
  }

  async findAll__(page: number = 0, limit: number = 10): Promise<any> {
    const result = await this.ProjetRepository
      .manager.query(`
        SELECT type , COUNT(type) as 'nb'
        FROM nestdb.ak_projet
        WHERE status=1
        GROUP BY type
        LIMIT 10;
      `);

    return result;
    /*
        return Promise.all(result)
          .then(data => {
            return {  data: data, error: 0, message: "OK" };
          })
          */
  }




}
