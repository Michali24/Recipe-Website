

import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Ingredient } from '../../../models/ingredient.model';
import { IngredientService } from '../../../service/ingredient.service';
import { RecipeService } from '../../../service/recipe.service';
import { Recipe } from '../../../models/recipe.model';
import { MatDialog } from '@angular/material/dialog';
import { RedirectToLoginComponent } from '../../../shared/modals/redirect-to-login/redirect-to-login.component';
import { AuthService } from '../../../service/auth.service';

@Component({
  selector: 'app-ingredient-list',
  templateUrl: './ingredient-list.component.html',
  styleUrl: './ingredient-list.component.css'
})
export class IngerdientListComponent implements OnInit {

  recipe!: Recipe;
  ingredientsByRecipeId: Ingredient[] = [];
  isLoading: boolean = true;
  errorMessage = '';
  recipeId!: number;
  categoryId?: number;
  imageMap: { [key: number]: string } = {
    2: '../../assets/images/recipe-2.jpg',
    3: '../../assets/images/recipe-3.jpg',
    4: '../../assets/images/recipe-4.jpg'
  };

  constructor(
    private _router: Router,
    private route: ActivatedRoute,
    private _ingredientService: IngredientService,
    private _recipeService: RecipeService,
    private dialog: MatDialog,
    private authService: AuthService,
  ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.recipeId = Number(params.get('recipeId'));
      this.getRecipeById(this.recipeId);
      this.getIngredientListByRecipeId(this.recipeId);
    });
  }

  getIngredientListByRecipeId(recipeId: number) {
    this.isLoading = true;
    this._ingredientService.getIngredientListByRecipeId(recipeId).subscribe({
      next: (ingredients) => {
        this.ingredientsByRecipeId = ingredients;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = 'שגיאה בשליפת הנתונים';
        this.isLoading = false;
      }
    });
  }

  getRecipeById(recipeId: number) {
    this.isLoading = true;
    this._recipeService.getRecipeById(recipeId).subscribe({
      next: (recipe) => {
        this.recipe = recipe;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = 'שגיאה בשליפת הנתונים';
        this.isLoading = false;
      }
    })
  }

  addRating() {
    if (this.authService.isLoggedIn()) {
      this._router.navigate([`recipes/rating/${this.recipeId}`]);
    } else {
      this.openRedirectToLoginModal();
    }
  }

  openRedirectToLoginModal() {
    this.dialog.open(RedirectToLoginComponent, {
      width: '350px',
      autoFocus: false,
      disableClose: true,
    });
  }
}

