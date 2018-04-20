import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';
import { IsString, IsInt, IsBoolean } from 'class-validator';
@Entity("photos")
export class Photo {
  @PrimaryGeneratedColumn() readonly id: number;

  @IsString()
  @Column({ length: 500 })
  readonly name: string;
  
  @IsString()
  @Column('text') 
  readonly description: string;
  
  @IsString()
  @Column() 
  readonly filename: string;

  @IsInt()
  @Column('int') 
  readonly views: number;

  @IsBoolean()
  @Column() 
  readonly isPublished: boolean;
}
