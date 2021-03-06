import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Photo } from './photo.entity';

@Component()
export class PhotoService {
  constructor(
    @InjectRepository(Photo)
    private readonly photoRepository: Repository<Photo>,
  ) {}

  async create(photo: Photo) {
    return await this.photoRepository.save(photo);
  }

  async update(id:number,photo: Photo) {
    return await this.photoRepository.updateById(id,photo);
  }

  async delete(id:number) {
    return await this.photoRepository.removeById(id);
  }

  async getOne(id:number):Promise<Photo> {
    return await this.photoRepository.findOneById(id);
  }

  async findAll(): Promise<Photo[]> {
    return await this.photoRepository.find();
  }

  
}
