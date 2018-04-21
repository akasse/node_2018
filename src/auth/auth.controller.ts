import { JoiValidationPipe } from './../pipe/joi-validation.pipe';
import { Controller, Post, Body, HttpStatus, Res, HttpException, UsePipes } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginSchema, Login } from './auth.schema';

@Controller('login')
export class AuthController {
  constructor(private readonly authService: AuthService) { }


  @Post()
  @UsePipes(new JoiValidationPipe(LoginSchema))
  async authentification( @Res() res, @Body() login: Login) {
    try {
      let result: any = await this.authService.sign(login);
      let data: any = {};
      if (result == 1) {
        data = { error: 1, message: "Login ou mot de passe incorrect" }
      } else {
        data = { data: result, error: 0, message: "OK" }
      }
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
