/* Entry Point */
ENTRY( Reset_Handler )

/* Highest address of the user mode stack */
_estack = 0x20002000; /* end o f 8K RAM */

/* Generate a link error if heap and stack don’t fit int o RAM */
_Min_Heap_Size = 0; /* required amount of heap */
_Min_Stack_Size = 0x200; /* required amount of stack */

MEMORY
{
  sram (rwx) : ORIGIN = 0x20000000, LENGTH = 8K
  flash (rx) : ORIGIN = 0x08000000, LENGTH = 64K
}
SECTIONS
{
    .  = 0x08000000;         /* From 0x08000000 */

    /* for Cortex devices, the beginning of the startup code is stored in the .isr_vector section, which goes to FLASH */ 
    .isr_vector : 
    { 
	. = ALIGN(4); 
	KEEP(*(.isr_vector))            /* Startup code */ 
	. = ALIGN(4); 
    } >flash
  
    .text : 
    {
	. = ALIGN(4); 
    	*(.text)      /* Program code */
	*(.text.*)
    	*(.rodata)    /* Read only data */
	*(.rodata.*)
	*(.glue_7)
	*(.glue_7t)

	. = ALIGN(4); 
	_etext = .; 
	/* This is used by the startup in order to initialize the .data secion */ 
	_sidata = _etext; 
    } >flash

    .  = 0x20000000;  /* From 0x20000000 */      
    .data : AT (_sidata)
    {
	. = ALIGN(4); 
	_sdata = . ;

	*(.data)      /* Data memory */
	*(.data.*)

	. = ALIGN(4);
	_edata = . ; 
    } >sram

    .bss :
    {
	. = ALIGN(4); 

	_sbss = . ; 
	*(.bss)       /* Zero-filled run time allocate data memory */
	*(COMMON)

	_ebss = . ; 
    } >sram

    PROVIDE ( end = _ebss ); 
    PROVIDE ( _end = _ebss );


    /* This is the user stack section 
    This is just to check that there is enough RAM left for the User mode stack 
    It should generate an error if it's full. 
    */
    ._usrstack : 
    {
	. = ALIGN(4); 
    	_susrstack = . ; 
        
    	. = . + _Min_Stack_Size ; 
        
	. = ALIGN(4); 
	_eusrstack = . ; 
    } > sram
}