import { Component } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { EventUser } from './event-user.entity';

@Component()
export class EventUserService {
  constructor(
    @InjectRepository(EventUser)
    private readonly eventUserRepository: Repository<EventUser>,
  ) {}

  async create(eventUser: EventUser) {
    return await this.eventUserRepository.save(eventUser);
  }

  async findAll(page: number = 0, limit: number = 10): Promise<any> {
    const result = await this.eventUserRepository
      .createQueryBuilder("event")
      .select(["event.id", "event.operation", "event.par", "event.at"])
      .orderBy({
        "event.at": "DESC"
      })
      .skip(limit * page)
      .take(limit)
      .getManyAndCount();

    return Promise.all(result)
      .then(data => {
        return { page: page, limit: limit, totalsItem: data[1], data: data[0], error: 0, message: "OK" };
      })
  }

  
}
