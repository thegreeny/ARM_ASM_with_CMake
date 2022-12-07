ENTRY ( _start )

SECTIONS
{
  .boot : { *(.boot) }

  . = 0x10000;

  .text : { *(.text) }

  . = ALIGN( ., 0x1000);

  .data : { *(.data) }

  .bss : { *(.bss) }
}
