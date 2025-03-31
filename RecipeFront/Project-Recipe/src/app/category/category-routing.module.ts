import { NgModule } from '@angular/core';
import { Route, RouterModule } from '@angular/router';
import { CategoryListComponent } from './components/category-list/category-list.component';

export const routes: Route[] = [
  { path: 'categories', component: CategoryListComponent }
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CategoryRoutingModule { }
