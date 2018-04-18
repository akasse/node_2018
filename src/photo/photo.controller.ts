import { Controller, Get, Post, Body, HttpStatus, Res } from '@nestjs/common';
import { PhotoService } from './photo.service';
import { Photo } from './photo.entity';

@Controller('photo')
export class PhotoController {
  constructor(private readonly photoService: PhotoService) {}

  @Get()
  findAll(): Promise<Photo[]> {
    return this.photoService.findAll();
  }

  @Post()
  async create(@Res() res, @Body() photo:Photo) {
    let ph = await this.photoService.create(photo);
    res.status(HttpStatus.CREATED).send(ph);
  }
}
