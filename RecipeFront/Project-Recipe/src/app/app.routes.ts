import { Routes } from '@angular/router';
import { CategoryListComponent } from './category/components/category-list/category-list.component';
import { NotFoundComponent } from './not-found/not-found/not-found.component';

export const routes: Routes = [
    { path: "", loadComponent: () => import('./home/home.component').then(m => m.HomeComponent) },
    { path: "recipes", loadChildren: () => import('./recipe/recipe.module').then(m => m.RecipeModule) },
    { path: "categories", component: CategoryListComponent },
    { path: "user", loadChildren: () => import('./user/user.module').then(s => s.UserModule) },
    { path: '**', component: NotFoundComponent }
];