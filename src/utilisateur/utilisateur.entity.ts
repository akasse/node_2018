import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToMany,
   JoinTable, UpdateDateColumn, CreateDateColumn } from 'typeorm';
//import { IsString, IsInt, IsBoolean } from 'class-validator';
import { IsEmail, IsString, IsInt, IsBoolean, IsEnum } from '@nestjs/common/node_modules/class-validator';
import { Projet } from '../projet/projet.entity';
import { Role } from './role.entity';

@Entity("ak_utilisateur")
export class Utilisateur {


  @PrimaryGeneratedColumn("uuid")
  id: string;

  @IsString()
  @Column({ length: 100 })
  readonly prenom: string;

  @IsString()
  @Column({ length: 50 })
  readonly nom: string;

  @IsEmail()
  @Column({ length: 100 , unique: true })
  readonly email: string;


  @IsString()
  @Column()
  readonly password: string;

  @IsBoolean()
  @Column({nullable:false,default:false})
  readonly status: boolean;

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
