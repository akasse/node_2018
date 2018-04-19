import { Entity, Column, PrimaryGeneratedColumn, JoinTable, ManyToMany, PrimaryColumn } from 'typeorm';
import { IsString } from 'class-validator';
import { Utilisateur } from './utilisateur.entity';
@Entity("ak_role")
export class Role {

  @IsString()
  @PrimaryColumn({ length: 20 })
  readonly nom: string;

  @IsString()
  @Column('text')
  readonly description: string;


  @ManyToMany(type => Utilisateur, utilisateur => utilisateur.roles, {
    cascadeInsert: true,
    cascadeUpdate: true
  })
  utilisateurs: Utilisateur[];

}
