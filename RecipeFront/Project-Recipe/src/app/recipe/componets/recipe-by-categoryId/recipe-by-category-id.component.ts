import { Component, OnInit, Input, OnChanges, SimpleChanges } from '@angular/core';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
import { Recipe } from '../../../models/recipe.model';
import { RecipeService } from '../../../service/recipe.service';

@Component({
  selector: 'app-recipe-by-category-id',
  templateUrl: './recipe-by-category-id.component.html',
  styleUrl: './recipe-by-category-id.component.css'
})
export class RecipeByCategoryIdComponent implements OnInit {
  recipesByCategoryId: Recipe[] = [];
  isLoading: boolean = true;
  errorMessage = '';
  categoryId!: number;
  imageMap: { [key: number]: string } = {
    2: '../../assets/images/recipe-2.jpg',
    3: '../../assets/images/recipe-3.jpg',
    4: '../../assets/images/recipe-4.jpg'
  };

  constructor(
    private _router: Router,
    private route: ActivatedRoute,
    private _recipeService: RecipeService
  ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.categoryId = Number(params.get('categoryId'));
      this.getRecipeListByCategoryId(this.categoryId);
    });
  }

  getRecipeListByCategoryId(categoryId: number) {
    this.isLoading = true;
    this._recipeService.getRecipeListByCategoryId(categoryId).subscribe({
      next: (res) => {
        this.recipesByCategoryId = res;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = 'שגיאה בשליפת הנתונים';
        this.isLoading = false;
      }
    });
  }

  goToRecipe(recipe: Recipe) {
    this._router.navigate(['recipes', recipe.id], {
      queryParams: { from: 'category', categoryId: this.categoryId }
    });
  }
}
