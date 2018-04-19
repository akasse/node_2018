import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, CreateDateColumn, UpdateDateColumn, JoinColumn } from 'typeorm';
import { Utilisateur } from '../utilisateur/utilisateur.entity';


@Entity('ak_projet')
export class Projet {

  @PrimaryGeneratedColumn("uuid")
  id: string;

  @Column({ length: 50 })
   nom: string;

  @Column({ length: 20 })
   type: string;

  @Column({nullable:true,default:""})
   description: string;

  @Column({nullable:false,default:true})
   status: boolean;

  @CreateDateColumn()
  createdDate: Date;

  @UpdateDateColumn()
  updatedDate: Date;


  @ManyToOne(type => Utilisateur, utilisateur => utilisateur.projets, {
    cascadeAll: true
  })
  @JoinColumn({ 
    name: "utilisateur_id"
  })
  utilisateur: Utilisateur;

}



