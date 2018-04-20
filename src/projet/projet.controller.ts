import { JoiValidationPipe } from './../pipe/joi-validation.pipe';
import { Controller, Get, Post, Body, HttpStatus, Res, Put, Delete, Param, HttpException, UsePipes } from '@nestjs/common';
import { ProjetService } from './projet.service';
import { Projet } from './projet.entity';
import { ProjetSchema } from './projet.schema';

@Controller('projets')
export class ProjetController {
  constructor(private readonly projetService: ProjetService) { }

  @Get()
  async findAll(@Res() res) {
    try {
      let ph = await this.projetService.findAll();
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
  async findOne(@Res() res, @Param('id') id: string) {
    try {
      let ph = await this.projetService.getOne(id);
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

 @Post("add")
 @UsePipes(new JoiValidationPipe(ProjetSchema))
  async create( @Res() res, @Body() projet: Projet) {
    try {
      let result = await this.projetService.create(projet);
      //let data = { data: ph, error: 0, message: "Création fait" }
      res.status(HttpStatus.CREATED).send(result);
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
  async update( @Res() res, @Body() projet: Projet) {
    try {
      let ph = await this.projetService.update(projet.id, projet);
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
      let ph = await this.projetService.delete(params.id);
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
