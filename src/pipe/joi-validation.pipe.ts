import * as Joi from 'joi';
import { PipeTransform, ArgumentMetadata, BadRequestException, Pipe, HttpException, HttpStatus } from '@nestjs/common';

@Pipe()
export class JoiValidationPipe implements PipeTransform<any> {
  constructor(private readonly schema) {}

  transform(value: any, metadata: ArgumentMetadata) {
    const { error } = Joi.validate(value, this.schema);
    if (error) {
      throw new HttpException({
        status: HttpStatus.BAD_REQUEST,
        error: 1,
        console: error,
        message: "Validation failed ak"
      }, 404);
    }
    return value;
  }
}