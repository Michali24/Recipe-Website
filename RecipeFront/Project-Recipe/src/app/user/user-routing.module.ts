import { NgModule } from '@angular/core';
import { Route, RouterModule } from '@angular/router';
import { SignUpComponent } from './componets/signUp/sign-up.component';
import { LogInComponent } from './componets/logIn/log-in.component';
import { UserComponent } from './user.component';

export const routes: Route[] = [{
  path: '',
  component: UserComponent,
  children: [
    { path: '', component: SignUpComponent },
    { path: 'login', component: LogInComponent },
  ]
}];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UserRoutingModule { }
