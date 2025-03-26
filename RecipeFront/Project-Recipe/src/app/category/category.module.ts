// //👆 כאן אנחנו מייבאים את הקומפוננטות, הניתובים ושירותי ה-HTTP.

// import { NgModule } from '@angular/core';
// import { CommonModule } from '@angular/common';
// import { RouterModule } from '@angular/router';
// import { CategoryListComponent } from './components/category-list/category-list.component';
// import { CategoryRoutingModule } from './category-routing.module';

// @NgModule({
//   declarations: [CategoryListComponent],
//   imports: [
//     CommonModule,
//     RouterModule,
//     CategoryRoutingModule
//   ],
//   exports: [
//     CategoryListComponent,
//   ]
// })
// export class CategoryModule { }


import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { CategoryListComponent } from './components/category-list/category-list.component';
import { CategoryRoutingModule } from './category-routing.module';

@NgModule({
  declarations: [CategoryListComponent],
  imports: [
    CommonModule,
    RouterModule,
    CategoryRoutingModule
  ],
  exports: [
    CategoryListComponent,
  ]
})
export class CategoryModule { }



