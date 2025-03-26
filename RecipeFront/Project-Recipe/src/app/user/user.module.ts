import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { SignUpComponent } from './componets/signUp/sign-up.component';
import { UserRoutingModule } from './user-routing.module';
import { LogInComponent } from './componets/logIn/log-in.component';
import { UserComponent } from './user.component';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatButtonModule } from '@angular/material/button';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatIcon } from '@angular/material/icon';

@NgModule({
  declarations: [SignUpComponent, LogInComponent, UserComponent],
  imports: [
    CommonModule,
    RouterModule,
    UserRoutingModule,
    ReactiveFormsModule,
    MatInputModule,
    MatFormFieldModule,
    MatButtonModule,
    MatSnackBarModule,
    MatIcon
  ]
})
export class UserModule { }
