import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Category } from '../../../models/category.model';
import { CategoryService } from '../../../service/category.service';

@Component({
  selector: 'app-category-list',
  templateUrl: './category-list.component.html',
  styleUrl: './category-list.component.css'
})
export class CategoryListComponent implements OnInit {

  categories: Category[] = [];
  isLoading: boolean = true;
  errorMessage = '';
  imageMap: { [key: number]: string } = {
    2: '../../assets/images/category-2.jpg',
    3: '../../assets/images/category-3.jpg',
    4: '../../assets/images/category-4.jpg'
  };

  ngOnInit() {
    this.getCategories();
  }

  constructor(private _router: Router, private _categoryService: CategoryService) { }

  getCategories() {
    this._categoryService.getCategoriesList().subscribe({
      next: (res) => {
        this.categories = res;
        this.isLoading = false;
      },
      error: (err) => {
        this.errorMessage = err;
        this.isLoading = false;
      }
    });
  }

  goToRecipes(categoryId: number) {
    this._router.navigate(['recipes', 'category', categoryId]);
  }
}





