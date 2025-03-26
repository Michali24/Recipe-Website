import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'splitByPipe',
})
export class SplitByPipePipe implements PipeTransform {

  transform(value: string): string {
    if (!value) return '';
    const parts = value.split('|');
    const nonEmptyParts = parts.filter(line => line.trim() !== '');
    const numberedLines = nonEmptyParts.map((line, index) => `${index + 1}. ${line}`);
    return numberedLines.join('<br>');
  }
}






