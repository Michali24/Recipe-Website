import { NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatDialogModule } from '@angular/material/dialog';
import { RedirectToLoginComponent } from './modals/redirect-to-login/redirect-to-login.component';
import { RatingSuccessDialogComponent } from './modals/rating-success-dialog/rating-success-dialog.component';

@NgModule({
    declarations: [RedirectToLoginComponent,RatingSuccessDialogComponent],
    imports: [
        MatDialogModule,
        MatButtonModule
    ],
    exports: [RedirectToLoginComponent],
})
export class SharedModule {}