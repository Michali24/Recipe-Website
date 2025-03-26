import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Ingredient } from '../models/ingredient.model';

@Injectable({
  providedIn: 'root'
})
export class IngredientService {

  private basicUrl = 'https://localhost:7211/api/Ingredient'
  
  constructor(private _httpClient: HttpClient) { }

  getIngredientListByRecipeId(recipeId: Number): Observable<Ingredient[]> {
    const url = `${this.basicUrl}/recipe/${recipeId}`; // נניח שה-API תומך בנתיב כזה
    return this._httpClient.get<Ingredient[]>(url);
  }
}
