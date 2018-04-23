import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn } from 'typeorm';
import { Prefixe } from '../enums';

@Entity("${Prefixe.BD_PREFIXE}events_users")
export class EventUser {

  @PrimaryGeneratedColumn()  
  id: number;

  @Column({ length: 50 })
  operation: string;
    
  @Column('text') 
  description: string;
  
  @Column({ length: 100 }) 
  par: string;

  @CreateDateColumn()
  at: Date;
}
