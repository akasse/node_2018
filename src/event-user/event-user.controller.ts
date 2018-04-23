import { Controller, Get, Post, Body, HttpStatus, Res, Put, Delete, Param, HttpException, ParseIntPipe, UseGuards, UsePipes, Req } from '@nestjs/common';
import { EventUserService } from './event-user.service';
import { EventUser } from './event-user.entity';
import { Roles } from './../guard/roles.decorator';
import { RolesGuard } from './../guard/roles.guard';
import { JoiValidationPipe } from './../pipe/joi-validation.pipe';
import { PaginationSchema, Pagination } from '../projet/projet.schema';


@Controller('events')
@UseGuards(RolesGuard)
export class EventUserController {
  constructor(private readonly eventUserService: EventUserService) { }

  @Post()
  @Roles("STAFF","ADMIN")
  @UsePipes(new JoiValidationPipe(PaginationSchema))
  async findAll(@Res() res, @Body() pagination: Pagination) {
    try {
      let data = await this.eventUserService.findAll(pagination.page,pagination.limit);
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


}
