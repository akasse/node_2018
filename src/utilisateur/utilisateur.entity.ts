import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToMany,
   JoinTable, UpdateDateColumn, CreateDateColumn, BeforeInsert } from 'typeorm';
import { Projet } from '../projet/projet.entity';
import { Role } from './role.entity';
import * as crypto from 'crypto';

@Entity("ak_utilisateur")
export class Utilisateur {


  @PrimaryGeneratedColumn("uuid")
  id: string;

  
  @Column({ length: 100 })
   prenom: string;

  
  @Column({ length: 50 })
   nom: string;

  
  @Column({ length: 100 , unique: true })
   email: string;


  
  @Column()
   password: string;

 
  @Column({nullable:false,default:false})
   status: boolean;

  @OneToMany(type => Projet, projet => projet.utilisateur, {
    cascadeInsert: true,
    cascadeUpdate: true
  })
  projets: Projet[];

  @CreateDateColumn()
  createdDate: Date;

  @UpdateDateColumn()
  updatedDate: Date;

  @ManyToMany(type => Role, role => role.utilisateurs, {
    cascadeInsert: true,
    cascadeUpdate: true
  })
  @JoinTable({ name: 'ak_users_roles' })
  roles: Role[];



}
