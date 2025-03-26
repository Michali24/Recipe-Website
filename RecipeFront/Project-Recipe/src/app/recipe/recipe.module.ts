import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { Top10RecipesComponent } from './componets/10top-recipes/top10-recipes.component';
import { AddRatingComponent } from './componets/add-rating/add-rating.component';
import { IngerdientListComponent } from './componets/ingredient-list/ingredient-list.component';
import { RecipeByCategoryIdComponent } from './componets/recipe-by-categoryId/recipe-by-category-id.component';
import { RecipeIngredientComponent } from './componets/recipe-ingredient/recipe-ingredient.component';
import { RecipeListComponent } from './componets/recipe-list/recipe-list.component';
import { RecipeRoutingModule } from './recipe-routing.module';
import { RecipeComponent } from './recipe.component';
import { QuickRecipeDirective } from './directives/quick-recipe.directive';
import { SplitByPipeModule } from '../pipes/split-by-pipe.module'; // ✅ ייבוא ה-Pipe
import { SharedModule } from '../shared/shared.module';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';

@NgModule({
  declarations: [
    RecipeComponent,
    RecipeListComponent,
    IngerdientListComponent,
    RecipeByCategoryIdComponent,
    AddRatingComponent,
    Top10RecipesComponent,
    RecipeIngredientComponent,
    QuickRecipeDirective, 
  ],
  imports: [
    CommonModule,
    RouterModule,
    SharedModule,
    RecipeRoutingModule,
    ReactiveFormsModule,
    SplitByPipeModule,
    MatIconModule,
    MatFormFieldModule,
    MatCardModule,
    MatButtonModule,
    MatInputModule,
  ]
})
export class RecipeModule { }