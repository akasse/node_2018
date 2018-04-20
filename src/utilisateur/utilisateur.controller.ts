import { UtilisateurSchema, UtilisateurSchemaDev } from './utilisateur.schema';
import { JoiValidationPipe } from './../pipe/joi-validation.pipe';
import { Controller, Get, Post, Body, HttpStatus, Res, Put, Delete, Param, HttpException, ParseIntPipe, UsePipes } from '@nestjs/common';
import { UtilisateurService } from './utilisateur.service';
import { Utilisateur } from './utilisateur.entity';

@Controller('utilisateurs')
export class UtilisateurController {
  constructor(private readonly utilisateurService: UtilisateurService) { }

  @Get()
  async findAll(@Res() res) {
    try {
      let result = await this.utilisateurService.findAll();
      let data = { data: result, error: 0, message: "OK" }
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

  @Get("/roles")
  async findAllRole(@Res() res) {
    try {
      let result = await this.utilisateurService.findAllRole();
      let data = { data: result, error: 0, message: "OK" }
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
  async findOne(@Res() res, @Param()id) {
    try {
      let result = await this.utilisateurService.getOne(id);
      let data = { data: result, error: 0, message: "OK" }
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
  @UsePipes(new JoiValidationPipe(UtilisateurSchema))
  async create( @Res() res, @Body() utilisateur: Utilisateur) {
    try {
      let result = await this.utilisateurService.create(utilisateur);
      //let data = { data: result, error: 0, message: "Création fait" }
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

  @Post("dev")
  @UsePipes(new JoiValidationPipe(UtilisateurSchemaDev))
  async creates( @Res() res, @Body() utilisateurs: Utilisateur[]) {
    try {
      let result = await this.utilisateurService.creates(utilisateurs);
      //let data = { data: result, error: 0, message: "Création fait" }
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
  async update( @Res() res, @Body() utilisateur: Utilisateur) {
    try {
      let result = await this.utilisateurService.update(utilisateur.id, utilisateur);
      let data = { data: result, error: 0, message: "Modification fait" }
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
      let result = await this.utilisateurService.delete(params.id);
      let data = { data: result, error: 0, message: "suppression fait" }
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
