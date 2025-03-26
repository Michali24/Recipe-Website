import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { RatingService } from '../../../service/rating.service';
import { RecipeService } from '../../../service/recipe.service';
import { AuthService } from '../../../service/auth.service';
import { MatDialog } from '@angular/material/dialog';
import { RatingSuccessDialogComponent } from '../../../shared/modals/rating-success-dialog/rating-success-dialog.component';

@Component({
  selector: 'app-add-rating',
  templateUrl: './add-rating.component.html',
  styleUrl: './add-rating.component.css'
})
export class AddRatingComponent implements OnInit {
  rating!: FormGroup;
  isSubmitting = false;
  errorMessage = '';
  recipeId!: number;
  userIsLoggedIn = false; 
  userId: number | null = null;

  constructor(
    private _ratingService: RatingService,
    private _router: Router,
    private route: ActivatedRoute,
    private _recipeService: RecipeService,
    private _authService: AuthService,
    private dialog: MatDialog
  ) { }

  ngOnInit() {
    this.userIsLoggedIn = this._authService.isLoggedIn();
    this.userId = this._authService.getUserId();

    this.route.paramMap.subscribe(params => {
      this.recipeId = Number(params.get('recipeId'));
    });

    this.rating = new FormGroup({
      ratingValue: new FormControl('', Validators.required)
    });
  }

  addRating() {
    if (!this.userIsLoggedIn) {
      this.errorMessage = "❌ עליך להתחבר כדי לדרג מתכון.";
      setTimeout(() => {
        this._router.navigate(['/user/login']);
      }, 3000);
      return;
    }
    if (!this.userId) {
      this.errorMessage = "❌ Invalid user ID. Please log in again.";
      return;
    }
    if (this.rating.invalid) return;
    this.isSubmitting = true;
    this.errorMessage = '';
    const ratingData = {
      id: 0,
      ratingValue: this.rating.value.ratingValue,
      recipeId: this.recipeId,
      userId: this.userId
    };
    this._ratingService.addRating(ratingData).subscribe({
      next: () => {
        this.isSubmitting = false;
        this.openRatingSuccessDailogModal();
      },
      error: (err) => {
        this.isSubmitting = false;
        this.errorMessage = err.error?.message || ' שגיאת שרת❌ שגיאה בהוספת דירוג!';
      }
    });
  }

  openRatingSuccessDailogModal() {
    this.dialog.open(RatingSuccessDialogComponent, {
      width: '350px',
      autoFocus: false,
      disableClose: true,
    });
  }

  get ratingValueControl() {
    return this.rating.get('ratingValue');
  }
}



