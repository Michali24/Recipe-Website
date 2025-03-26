import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { UserService } from '../../../service/user.service';
import { AuthService } from '../../../service/auth.service';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-log-in',
  templateUrl: './log-in.component.html',
  styleUrl: './log-in.component.css'
})
export class LogInComponent implements OnInit {

  logInForm!: FormGroup;
  isSubmitting = false;
  errorMessage: string = '';
  successMessage: string = '';
  showErrorMessage = false;
  isPasswordVisible = false;

  constructor(
    private _userService: UserService,
    private _router: Router,
    private _authService: AuthService,
    private _snackBar: MatSnackBar
  ) { }

  ngOnInit() {
    this.logInForm = new FormGroup({
      userName: new FormControl('', Validators.required),
      password: new FormControl('', Validators.required)
    });

    this.logInForm.valueChanges.subscribe(() => {
      if (this.logInForm.valid) {
        this.showErrorMessage = false;
      }
    });
  }

  login() {
    if (this.logInForm.invalid) {
      this.showErrorMessage = true;
      return;
    }
    this.isSubmitting = true;
    this._userService.login(this.logInForm.value).subscribe({
      next: (res: { token: string }) => {
        this.isSubmitting = false;
        this._authService.setToken(res.token);
        this._router.navigate(['/']);
      },
      error: () => {
        this.isSubmitting = false;
        this.showErrorMessage = true;
      }
    });
  }
  navigateToSignUp() {
    this._router.navigate(['user']);
  }

  togglePasswordVisibility() {
    this.isPasswordVisible = !this.isPasswordVisible;
  }
}