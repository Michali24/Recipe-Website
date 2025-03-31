import { NgModule } from "@angular/core";
import { Route, RouterModule } from "@angular/router";
import { IngerdientListComponent } from "./componets/ingredient-list/ingredient-list.component";
import { RecipeByCategoryIdComponent } from "./componets/recipe-by-categoryId/recipe-by-category-id.component";
import { RecipeListComponent } from "./componets/recipe-list/recipe-list.component";
import { RecipeComponent } from "./recipe.component";
import { AddRatingComponent } from "./componets/add-rating/add-rating.component";
import { Top10RecipesComponent } from "./componets/10top-recipes/top10-recipes.component";
import { authGuard } from "../guards/auth.guard";

export const routes: Route[] = [{
    path: '',
    component: RecipeComponent,
    children: [
        { path: '', component: RecipeListComponent, },
        { path: 'top10', component: Top10RecipesComponent },
        { path: ':recipeId', component: IngerdientListComponent },
        { path: 'category/:categoryId', component: RecipeByCategoryIdComponent },
        { path: 'rating/:recipeId', component: AddRatingComponent, canActivate: [authGuard] }, // ✅ רק משתמשים מחוברים יכולים להוסיף דירוג
    ]
}];
@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class RecipeRoutingModule { }

