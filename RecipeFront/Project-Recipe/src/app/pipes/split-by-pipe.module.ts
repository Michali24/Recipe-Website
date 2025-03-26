import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SplitByPipePipe } from './split-by-pipe.pipe';

@NgModule({
  declarations: [SplitByPipePipe],
  imports: [CommonModule],
  exports: [SplitByPipePipe]
})
export class SplitByPipeModule { }

