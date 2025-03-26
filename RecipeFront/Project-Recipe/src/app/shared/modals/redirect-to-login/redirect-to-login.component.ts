import { Component } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';

@Component({
  selector: 'app-redirect-to-login',
  templateUrl: './redirect-to-login.component.html',
  styleUrls: ['./redirect-to-login.component.css']
})
export class RedirectToLoginComponent {

  constructor(public dialogRef: MatDialogRef<RedirectToLoginComponent>, private router: Router) {}

  confirmRedirect() {
    this.dialogRef.close();
    this.router.navigate(['/user/login']); 
  }
}