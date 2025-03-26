import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Recipe } from '../../../models/recipe.model';
import { RecipeService } from '../../../service/recipe.service';

@Component({
  selector: 'app-recipe-list',
  templateUrl: './recipe-list.component.html',
  styleUrl: './recipe-list.component.css'
})
export class RecipeListComponent implements OnInit {
  recipes: Recipe[] = [];
  isLoading: boolean = true;
  errorMessage = '';

  ngOnInit() {
    this.getRecipeList();
  }

  constructor(private _router: Router, private _recipeService: RecipeService) { }

  getRecipeList() {
    this._recipeService.getRecipesList().subscribe({
      next: (res) => {
        this.recipes = res;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = err;
        this.isLoading = false;
      }
    });
  }

  goToRecipe(recipe: Recipe) {
    this._router.navigate(['recipes', recipe.id]);
  }
}