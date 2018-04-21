import { Roles } from './../guard/roles.decorator';
import { RolesGuard } from './../guard/roles.guard';
import { JoiValidationPipe } from './../pipe/joi-validation.pipe';
import { Controller, Get, Post, Body, HttpStatus, Res, Put, Delete, Param, HttpException, UsePipes, UseGuards, Req } from '@nestjs/common';
import { ProjetService } from './projet.service';
import { Projet } from './projet.entity';
import { ProjetSchema } from './projet.schema';
import { PaginationSchema } from './projet.schema';
import { Pagination } from './projet.schema';

@Controller('projets')
@UseGuards(RolesGuard)
export class ProjetController {
  constructor(private readonly projetService: ProjetService) { }

  @Post("getAll")
  @Roles("STAFF","ADMIN","USER")
  @UsePipes(new JoiValidationPipe(PaginationSchema))
  async findAll(@Req() req,@Res() res, @Body() pagination: Pagination) {
    try {
      const {user} = req.user;
      let data = await this.projetService.findAll(pagination.page,pagination.limit,user);
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
