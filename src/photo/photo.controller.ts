import { Controller, Get, Post, Body, HttpStatus, Res, Put, Delete, Param, HttpException } from '@nestjs/common';
import { PhotoService } from './photo.service';
import { Photo } from './photo.entity';

@Controller('photo')
export class PhotoController {
  constructor(private readonly photoService: PhotoService) { }

  @Get()
  async findAll(@Res() res) {
    try {
      let ph = await this.photoService.findAll();
      let data = { data: ph, error: 0, message: "OK" }
      res.status(HttpStatus.OK).send(data);
    } catch (error) {
      throw new HttpException({
        status: HttpStatus.FORBIDDEN,
        error: 1,
        console: error.sqlMessage,
        message: "Probléme au niveau du serveur"
      }, 404);
    }
    
  }

  @Get(":id")
  async findOne(@Res() res, @Param() params) {
    try {
      let ph = await this.photoService.getOne(params.id);
      let data = { data: ph, error: 0, message: "OK" }
      res.status(HttpStatus.OK).send(data);
    } catch (error) {
      throw new HttpException({
        status: HttpStatus.FORBIDDEN,
        error: 1,
        console: error.sqlMessage,
        message: "vérifier les champs"
      }, 404);
    }
  }

  @Post()
  async create( @Res() res, @Body() photo: Photo) {
    try {
      let ph = await this.photoService.create(photo);
      let data = { data: ph, error: 0, message: "Création fait" }
      res.status(HttpStatus.CREATED).send(data);
    } catch (error) {
      throw new HttpException({
        status: HttpStatus.FORBIDDEN,
        error: 1,
        console: error.sqlMessage,
        message: "vérifier les champs"
      }, 404);
    }



  }

  @Put()
  async update( @Res() res, @Body() photo: Photo) {
    try {
      let ph = await this.photoService.update(photo.id, photo);
      let data = { data: ph, error: 0, message: "Modification fait" }
      res.status(HttpStatus.OK).send(data);
    } catch (error) {
      throw new HttpException({
        status: HttpStatus.FORBIDDEN,
        error: 1,
        console: error.sqlMessage,
        message: "vérifier les champs"
      }, 404);
    }
    
  }

  @Delete(":id")
  async delete( @Res() res, @Param() params) {
    try {
      let ph = await this.photoService.delete(params.id);
      let data = { data: ph, error: 0, message: "suppression fait" }
      res.status(HttpStatus.OK).send(data);
    } catch (error) {
      throw new HttpException({
        status: HttpStatus.FORBIDDEN,
        error: 1,
        console: error.sqlMessage,
        message: "vérifier les champs"
      }, 404);
    }
  }

}
