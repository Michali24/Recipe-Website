import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Recipe } from '../../../models/recipe.model';
import { RecipeService } from '../../../service/recipe.service';

@Component({
  selector: 'app-top10-recipes',
  templateUrl: './top10-recipes.component.html',
  styleUrl: './top10-recipes.component.css'
})
export class Top10RecipesComponent implements OnInit {

  top10: Recipe[] = [];
  isLoading: boolean = true;
  errorMessage = '';

  ngOnInit() {
    this.getTop10();
  }

  constructor(private _router: Router, private _recipeService: RecipeService) { }

  getTop10() {
    this._recipeService.getTop10().subscribe({
      next: (res) => {
        this.top10=res;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = err;
        this.isLoading = false;
      },
    });
  }

  goToRecipe(recipe: Recipe) {
    this._router.navigate(['recipes', recipe.id]);
  }
}

