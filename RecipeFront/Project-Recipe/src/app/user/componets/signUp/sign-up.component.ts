import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { User } from '../../../models/user.model';
import { UserService } from '../../../service/user.service';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrl: './sign-up.component.css'
})
export class SignUpComponent implements OnInit {
  signupForm!: FormGroup;
  isSubmitting = false;
  errorMessage = '';
  successMessage: string = '';
  showErrorMessage = false;
  isPasswordVisible = false;

  constructor(private _userService: UserService, private _router: Router) { }

  ngOnInit() {
    this.signupForm = new FormGroup({
      userName: new FormControl('', [
        Validators.required,
        Validators.minLength(3)
      ]),
      email: new FormControl('', [
        Validators.required,
        Validators.email,
        Validators.pattern(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/),
        Validators.maxLength(320)
      ]),
      password: new FormControl('', [
        Validators.required,
        Validators.minLength(8),
        Validators.pattern(/^(?=.*[A-Z])(?=.*\d).{8,}$/)
      ])
    });
    this.signupForm.valueChanges.subscribe(() => {
      if (this.signupForm.valid) {
        this.showErrorMessage = false;
      }
    });
  }

  signUp() {
    if (this.signupForm.invalid) {
      this.showErrorMessage = true;
      return;
    }
    this.isSubmitting = true;
    this.errorMessage = '';
    this.successMessage = '';
    this._userService.signUp(this.signupForm.value).subscribe({
      next: () => {
        this.isSubmitting = false;
        this.successMessage = '✅ Registration successful! Welcome to COOKME!';

        setTimeout(() => {
          this.successMessage = '';
          this._router.navigate(['user/login']);
        }, 3000);
      },
      error: (err) => {
        this.isSubmitting = false;
        this.showErrorMessage = true;
        this.errorMessage = err.error?.message || 'Registration failed!';
      }
    });
  }

  togglePasswordVisibility() {
    this.isPasswordVisible = !this.isPasswordVisible;
  }
}
