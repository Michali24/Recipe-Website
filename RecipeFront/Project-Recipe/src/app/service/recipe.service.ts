import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Recipe } from '../models/recipe.model';

@Injectable({
  providedIn: 'root'
})
export class RecipeService {

  private basicUrl = 'https://localhost:7211/api/Recipe';


  constructor(private _httpClient: HttpClient) { }

  getRecipesList(): Observable<Recipe[]> {
    return this._httpClient.get<Recipe[]>(this.basicUrl);
  }

  getTop10(): Observable<Recipe[]> {
    return this._httpClient.get<Recipe[]>(`${this.basicUrl}/top10`);
  }

  getRecipeListByCategoryId(categoryId: number): Observable<Recipe[]> {
    const url = `${this.basicUrl}/category/${categoryId}`;
    return this._httpClient.get<Recipe[]>(url);
  }

  getRecipeById(recipeId: number): Observable<Recipe> {
    return this._httpClient.get<Recipe>(`${this.basicUrl}/${recipeId}`);
  }

  updateRecipe(id: number, updatedData: Partial<Recipe>): Observable<void> {
    return this._httpClient.put<void>(`${this.basicUrl}/updateRecipe${id}`, updatedData);
  }
}

