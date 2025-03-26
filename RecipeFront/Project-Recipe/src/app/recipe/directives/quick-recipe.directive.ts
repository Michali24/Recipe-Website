import { Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';

@Directive({
  selector: '[appQuickRecipe]',
})
export class QuickRecipeDirective implements OnInit {
  @Input() appQuickRecipe!: number;

  constructor(private el: ElementRef, private renderer: Renderer2) { }

  ngOnInit() {
    if (this.appQuickRecipe !== undefined && this.appQuickRecipe <= 30) {
      // Finding the appropriate tab
      const cardElement = this.el.nativeElement.closest('.recipe-box');
      if (cardElement) {
        this.renderer.setStyle(cardElement, 'boxShadow', '0px 0px 15px 5px rgba(135, 249, 135, 0.7)');
        this.renderer.setStyle(cardElement, 'borderRadius', '12px');
        this.renderer.setStyle(cardElement, 'transition', 'box-shadow 0.3s ease-in-out');
        const starIcon = this.renderer.createElement('span');
        this.renderer.setStyle(starIcon, 'color', 'gold');
        this.renderer.setStyle(starIcon, 'fontSize', '22px');
        this.renderer.setStyle(starIcon, 'marginLeft', '8px');
        const starText = this.renderer.createText('⭐');
        this.renderer.appendChild(starIcon, starText);
        this.renderer.appendChild(cardElement, starIcon);
      }
    }
  }
}



