// //תקייה זו מכילה שירותים (Services) שמטפלים בלוגיקה עסקית, למשל תקשורת עם השרת.
// import { Injectable } from '@angular/core';
// import { HttpClient } from '@angular/common/http';
// import { Observable } from 'rxjs';
// // מודל Category מגדיר בדיוק איזה שדות צריכים להיות
// //  לקטגוריה ומה סוג הנתונים שמצפים להם (למשל, id, name או description).
// import { Category } from '../models/category.model';

// // זה אומר שהשירות הזה זמין לכל האפליקציה (Singleton),
// //  ואין צורך לרשום אותו ב־providers של המודול – אנגולר עושה את זה לבד.
// @Injectable({
//   providedIn: 'root'
// })

// export class CategoryService {

//   private basicUrl = 'https://localhost:7211/api/Category';

//   // יצירת Observable מותאם ידנית:
//   $source: Observable<number> = new Observable<number>((observer) => {
//     //במקרה של הצלחה
//     observer.next(1);
//     //במקרה של סיום
//     observer.complete();
//     //במקרה של כישלון
//     observer.error();
//   })

//   constructor(private _httpClient: HttpClient) { }

//   getCategoriesList(): Observable<Category[]> {
//     return this._httpClient.get<Category[]>(this.basicUrl);
//   }
// }

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

