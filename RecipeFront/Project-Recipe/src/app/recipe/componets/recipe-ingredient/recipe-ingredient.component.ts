import { Component, Input } from '@angular/core';
import { Recipe } from '../../../models/recipe.model';

@Component({
  selector: 'app-recipe-ingredient',
  templateUrl: './recipe-ingredient.component.html',
  styleUrl: './recipe-ingredient.component.css'
})
export class RecipeIngredientComponent {
  @Input() recipe!: Recipe;

  getStars(rating: number): number[] {
    let roundedRating = Math.round(rating * 2) / 2;
    const stars = [];

    for (let i = 1; i <= 5; i++) {
      if (roundedRating >= 1) {
        stars.push(1);
        roundedRating -= 1;
      } else if (roundedRating === 0.5) {
        stars.push(0.5);
        roundedRating -= 0.5;
      } else {
        stars.push(0);
      }
    }
    return stars;
  }

  getDifficultyLabel(level: string): string {
    switch (level) {
      case '1':
        return 'Easy';
      case '2':
        return 'Medium';
      case '3':
        return 'Hard';
      default:
        return 'Unknown'
    }
  }
}

