import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';
import { IsString, IsInt, IsBoolean } from 'class-validator';
@Entity()
export class Photo {
  @PrimaryGeneratedColumn() id: number;

  @IsString()
  @Column({ length: 500 })
  name: string;
  
  @IsString()
  @Column('text') 
  description: string;
  
  @IsString()
  @Column() 
  filename: string;

  @IsString()
  @Column('int') 
  views: number;

  @IsBoolean()
  @Column() 
  isPublished: boolean;
}
