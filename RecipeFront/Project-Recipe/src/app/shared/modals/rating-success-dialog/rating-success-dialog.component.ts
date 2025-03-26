import { Component } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-rating-success-dialog',
  templateUrl: './rating-success-dialog.component.html',
  styleUrl: './rating-success-dialog.component.css'
})
export class RatingSuccessDialogComponent {

  constructor(public dialogRef: MatDialogRef<RatingSuccessDialogComponent>) { }
}
