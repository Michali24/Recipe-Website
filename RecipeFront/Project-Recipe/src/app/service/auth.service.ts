import { Injectable } from '@angular/core';
import { LocalStorageService } from './local-storage.service';
import { jwtDecode } from 'jwt-decode';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private TOKEN_KEY = 'jwtToken';

  constructor(private localStorageService: LocalStorageService) { }

  getToken(): string | null {
    return this.localStorageService.getItem(this.TOKEN_KEY);
  }

  setToken(token: string): void {
    this.localStorageService.setItem(this.TOKEN_KEY, token);
  }

  removeToken(): void {
    this.localStorageService.removeItem(this.TOKEN_KEY);
  }

  isLoggedIn(): boolean {
    return !!this.getToken();
  }

  getUserId(): number | null {
    const token = this.getToken();
    if (!token) return null;
    try {
      const decodedToken: any = jwtDecode(token);
      return decodedToken.Id ? Number(decodedToken.Id) : null;
    } catch (error) {
      console.error('Error decoding token:', error);
      return null;
    }
  }
}


