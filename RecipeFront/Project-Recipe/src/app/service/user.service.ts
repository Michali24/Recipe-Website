import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { User } from '../models/user.model';
import { LoginModel } from '../models/logInModel.model';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private basicUrl = 'https://localhost:7211/api/Users';
  private logInModelUrl = 'https://localhost:7211/api/Auth';


  constructor(private _httpClient: HttpClient) {
  }

  signUp(user: User): Observable<User> {
    return this._httpClient.post<User>('https://localhost:7211/api/Users', user, {
      headers: { 'Content-Type': 'application/json' }
    });
  }

  getUserById(id: number): Observable<User> {
    return this._httpClient.get<User>(`${this.basicUrl}/${id}`)
  }

  login(loginModel: LoginModel): Observable<any> {
    return this._httpClient.post<LoginModel>(`${this.logInModelUrl}/login`, loginModel);
  }
}