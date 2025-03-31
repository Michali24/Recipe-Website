import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Category } from '../models/category.model';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  private basicUrl = 'https://localhost:7211/api/Category';

  constructor(private _httpClient: HttpClient) { }

  getCategoriesList(): Observable<Category[]> {
    return this._httpClient.get<Category[]>(this.basicUrl);
  }
}
