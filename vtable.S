.syntax unified
.cpu cortex-m0plus
.fpu softvfp
.thumb

.global vtable
//.global default_interrupt_handler

.type  vtable, %object
.section .vector_table,"a",%progbits
vtable:
  .word _estack
  .word reset_handler
/*
  .word NMI_Handler
  .word HardFault_Handler
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word SVC_Handler
  .word 0
  .word 0
  .word PendSV_Handler
  .word SysTick_Handler
  .word WWDG_IRQHandler                   
  .word 0                                 
  .word RTC_IRQHandler                    
  .word FLASH_IRQHandler                  
  .word RCC_IRQHandler                    
  .word EXTI0_1_IRQHandler                
  .word EXTI2_3_IRQHandler                
  .word EXTI4_15_IRQHandler               
  .word 0                                 
  .word DMA1_Channel1_IRQHandler          
  .word DMA1_Channel2_3_IRQHandler        
  .word DMA1_Channel4_5_IRQHandler        
  .word ADC1_IRQHandler                   
  .word LPTIM1_IRQHandler                 
  .word 0                                 
  .word TIM2_IRQHandler                   
  .word 0                                 
  .word 0                                 
  .word 0                                 
  .word 0                                 
  .word TIM21_IRQHandler                  
  .word 0                                 
  .word 0                                 
  .word I2C1_IRQHandler                   
  .word 0                                 
  .word SPI1_IRQHandler                   
  .word 0                                 
  .word 0                                 
  .word USART2_IRQHandler                 
  .word LPUART1_IRQHandler                
  .word 0                                 
  .word 0                                 

.weak      NMI_Handler
.thumb_set NMI_Handler,default_interrupt_handler

.weak      HardFault_Handler
.thumb_set HardFault_Handler,default_interrupt_handler

.weak      SVC_Handler
.thumb_set SVC_Handler,default_interrupt_handler

.weak      PendSV_Handler
.thumb_set PendSV_Handler,default_interrupt_handler

.weak      SysTick_Handler
.thumb_set SysTick_Handler,default_interrupt_handler

.weak      WWDG_IRQHandler
.thumb_set WWDG_IRQHandler,default_interrupt_handler

.weak      RTC_IRQHandler
.thumb_set RTC_IRQHandler,default_interrupt_handler

.weak      FLASH_IRQHandler
.thumb_set FLASH_IRQHandler,default_interrupt_handler

.weak      RCC_IRQHandler
.thumb_set RCC_IRQHandler,default_interrupt_handler

.weak      EXTI0_1_IRQHandler
.thumb_set EXTI0_1_IRQHandler,default_interrupt_handler

.weak      EXTI2_3_IRQHandler
.thumb_set EXTI2_3_IRQHandler,default_interrupt_handler

.weak      EXTI4_15_IRQHandler
.thumb_set EXTI4_15_IRQHandler,default_interrupt_handler

.weak      DMA1_Channel1_IRQHandler
.thumb_set DMA1_Channel1_IRQHandler,default_interrupt_handler

.weak      DMA1_Channel2_3_IRQHandler
.thumb_set DMA1_Channel2_3_IRQHandler,default_interrupt_handler

.weak      DMA1_Channel4_5_IRQHandler
.thumb_set DMA1_Channel4_5_IRQHandler,default_interrupt_handler

.weak      ADC1_IRQHandler
.thumb_set ADC1_IRQHandler,default_interrupt_handler

.weak      LPTIM1_IRQHandler
.thumb_set LPTIM1_IRQHandler,default_interrupt_handler

.weak      TIM2_IRQHandler
.thumb_set TIM2_IRQHandler,default_interrupt_handler

.weak      TIM21_IRQHandler
.thumb_set TIM21_IRQHandler,default_interrupt_handler

.weak      I2C1_IRQHandler
.thumb_set I2C1_IRQHandler,default_interrupt_handler

.weak      SPI1_IRQHandler
.thumb_set SPI1_IRQHandler,default_interrupt_handler

.weak      USART2_IRQHandler
.thumb_set USART2_IRQHandler,default_interrupt_handler

.weak      LPUART1_IRQHandler
.thumb_set LPUART1_IRQHandler,default_interrupt_handler
*/
.size vtable, .-vtable

/*
 * The default IRQ handeler
 */
/*
.section  .text.default_interrupt_handler,"ax",%progbits
default_interrupt_handler:
    default_interrupt_loop:
        B default_interrupt_loop

.size default_interrupt_handler, .-default_interrupt_handler
*/
