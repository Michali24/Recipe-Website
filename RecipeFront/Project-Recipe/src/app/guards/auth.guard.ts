// import { CanActivateFn, Router } from '@angular/router';
// import { inject } from '@angular/core';
// import { AuthService } from '../service/auth.service';

// // ✔ כאן אנחנו יוצרים פונקציה בשם authGuard, שהיא ה-Guard שלנו.
// // ✔ CanActivateFn אומר שה-Guard מחליט אם אפשר להיכנס לנתיב או לא.
// // ✔ route – הפרטים של הנתיב שמנסים להיכנס אליו.
// // ✔ state – המצב של הנתיב.
// export const authGuard: CanActivateFn = (route, state) => {
//   //authService – מאפשר לבדוק אם למשתמש יש טוקן.
//   const authService = inject(AuthService);
//   // router – מאפשר לשלוח את המשתמש לעמוד אחר אם אין לו הרשאה.
//   const router = inject(Router);

//   // בדיקה אם יש טוקן
//   if (authService.getToken()) {
//     return true; // משתמש מחובר - תן גישה
//   } else {

//     console.log("❌ אין טוקן, מנווטים לעמוד התחברות בעוד 3 שניות...");

//     // ✅ השהיה של 3 שניות כדי שהודעת השגיאה תוצג
//     setTimeout(() => {
//       router.navigate(['/user/login']);
//     }, 3000)

//     return false;
//   }
// };


import { CanActivateFn, Router } from '@angular/router';
import { inject } from '@angular/core';
import { AuthService } from '../service/auth.service';

export const authGuard: CanActivateFn = (route, state) => {

  const authService = inject(AuthService);
  const router = inject(Router);

  if (authService.getToken()) {
    return true;
  } else {
    setTimeout(() => {
      router.navigate(['/user/login']);
    }, 3000)
    return false;
  }
};




