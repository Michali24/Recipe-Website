import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Rating } from '../models/rating.model';

@Injectable({
  providedIn: 'root'
})
export class RatingService {

  private basicUrl = 'https://localhost:7211/api/Rating';

  constructor(private _httpClient: HttpClient) {
  }

  addRating(rating: Rating): Observable<any> {
    return this._httpClient.post<Rating>(`${this.basicUrl}/createRating`, rating);
  }
}